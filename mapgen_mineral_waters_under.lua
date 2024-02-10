--[[
    Everness. Never ending discovery in Everness mapgen.
    Copyright (C) 2024 SaKeL

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

--]]

--
-- Register biomes
--

local y_max = Everness.settings.biomes.everness_mineral_waters_under.y_max
local y_min = Everness.settings.biomes.everness_mineral_waters_under.y_min

-- Mineral Waters

Everness:register_biome({
    name = 'everness:mineral_waters_under',
    node_cave_liquid = 'air',
    node_dungeon = 'everness:mineral_stone_brick',
    node_dungeon_alt = 'everness:mineral_stone_brick_with_growth',
    node_dungeon_stair = 'stairs:stair_mineral_stone_brick',
    y_max = y_max,
    y_min = y_min,
    vertical_blend = 16,
    heat_point = 78,
    humidity_point = 58,
})

--
-- Ores
--

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

Everness:register_ore({
    ore_type = 'blob',
    ore = 'everness:mineral_stone',
    wherein = { 'mapgen_stone' },
    clust_scarcity = 16 * 16 * 16,
    clust_size = 5,
    y_max = y_max,
    y_min = y_min,
    noise_threshold = 0.0,
    noise_params = {
        offset = 0.5,
        scale = 0.2,
        spread = { x = 5, y = 5, z = 5 },
        seed = 766,
        octaves = 1,
        persist = 0.0
    },
    biomes = { 'everness:mineral_waters_under' }
})

--
-- Register decorations
--

Everness:register_decoration({
    name = 'everness:mineral_water_under_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 10,
    biomes = { 'everness:mineral_waters_under' },
    y_max = y_max,
    y_min = y_min,
    flags = 'all_floors, force_placement',
    decoration = {
        'everness:mineral_lava_stone'
    },
})

--
-- On Generated
--

local function find_walls(cpos)
    local is_wall = function(node)
        return node.name ~= 'air' and node.name ~= 'ignore'
    end

    local dirs = {
        { x = 1, z = 0 },
        { x = -1, z = 0 },
        { x = 0, z = 1 },
        { x = 0, z = -1 }
    }

    local ret = {}
    local mindist = { x = 0, z = 0 }
    local min = function(a, b)
        return a ~= 0 and math.min(a, b) or b
    end

    for _, dir in ipairs(dirs) do
        for i = 1, 9 do -- 9 = max room size / 2
            local pos = vector.add(cpos, {x=dir.x*i, y=0, z=dir.z*i})

            -- continue in that direction until we find a wall-like node
            local node = minetest.get_node(pos)
            if is_wall(node) then
                local front_below = vector.subtract(pos, {x=dir.x, y=1, z=dir.z})
                local above = vector.add(pos, {x=0, y=1, z=0})

                -- check that it:
                --- is at least 2 nodes high (not a staircase)
                --- has a floor
                if is_wall(minetest.get_node(front_below)) and is_wall(minetest.get_node(above)) then
                    table.insert(ret, {pos = pos, facing = {x=-dir.x, y=0, z=-dir.z}})
                    if dir.z == 0 then
                        mindist.x = min(mindist.x, i-1)
                    else
                        mindist.z = min(mindist.z, i-1)
                    end
                end
                -- abort even if it wasn't a wall cause something is in the way
                break
            end
        end
    end

    return {
        walls = ret,
        size = { x = mindist.x * 2, z = mindist.z * 2 }
    }
end

local c_everness_pyrite_lantern = minetest.get_content_id('everness:pyrite_lantern')
local c_everness_cursed_pumpkin_lantern = minetest.get_content_id('everness:cursed_pumpkin_lantern')
local c_mapgen_stone = minetest.get_content_id('mapgen_stone')
local biome_id_everness_mineral_waters_under = minetest.get_biome_id('everness:mineral_waters_under')

-- minetest.set_gen_notify({
--     large_cave_begin = true,
--     large_cave_end = true
-- })

Everness:add_to_queue_on_generated({
    name = 'everness:mineral_waters_under',
    can_run = function(biomemap)
        return table.indexof(biomemap, biome_id_everness_mineral_waters_under) ~= -1
    end,
    -- read/write to `data` what will be eventually saved (set_data)
    -- used for voxelmanip `data` manipulation
    on_data = function(minp, maxp, area, data, p2data, gennotify, rand, shared_args)

        for y = minp.y, maxp.y do
            for z = minp.z, maxp.z do
                for x = minp.x, maxp.x do
                    local vi = area:index(x, y, z)

                    if
                        data[vi] == minetest.CONTENT_AIR
                        and (
                            data[vi + 1] == c_mapgen_stone
                            or data[vi - 1] == c_mapgen_stone
                            or data[vi + area.zstride] == c_mapgen_stone
                            or data[vi - area.zstride] == c_mapgen_stone
                        )
                        and rand:next(0, 100) == 75
                    then
                        local rand_c_node = rand:next(1, 2) == 1 and c_everness_pyrite_lantern or c_everness_cursed_pumpkin_lantern
                        data[vi] = rand_c_node
                    end
                end
            end
        end

        -- for _, p in ipairs(gennotify['large_cave_end'] or {}) do
        --     data[area:indexp(p)] = c_everness_cursed_pumpkin_lantern
        --     data[area:indexp(p)] = c_everness_cursed_pumpkin_lantern

        --     local minpos = vector.subtract(p, { x = 9, y = 9, z = 9 })
        --     local maxpos = vector.add(p, { x = 9, y = 9, z = 9 })

        --     for y = minpos.y, maxpos.y do
        --         for z = minpos.z, maxpos.z do
        --             for x = minpos.x, maxpos.x do
        --                 local vi = area:index(x, y, z)

        --                 if
        --                 data[vi] == minetest.CONTENT_AIR
        --                 and (
        --                     data[vi + 1] == c_mapgen_stone
        --                     or data[vi - 1] == c_mapgen_stone
        --                     or data[vi + area.zstride] == c_mapgen_stone
        --                     or data[vi - area.zstride] == c_mapgen_stone
        --                 )
        --             then
        --                 data[vi] = minetest.get_content_id('default:apple')
        --             end
        --             end
        --         end
        --     end
        -- end
    end,
    -- read-only (but cant and should not manipulate) voxelmanip `data`
    -- used for `place_schematic_on_vmanip` which will invalidate `data`
    -- therefore we are doing it after we set the data
    after_set_data = function(minp, maxp, vm, area, data, p2data, gennotify, rand, shared_args)
    end,
    -- Cannot read/write voxelmanip or its data
    -- Used for direct manipulation of the world chunk nodes where the
    -- definitions of nodes are available and node callback can be executed
    -- or e.g. for `minetest.fix_light`
    after_write_to_map = function(shared_args, gennotify)
    end
})
