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

local y_max = Everness.settings.biomes.everness_mineral_waters.y_max
local y_min = Everness.settings.biomes.everness_mineral_waters.y_min

-- Mineral Waters

minetest.register_biome({
    name = 'everness_mineral_waters',
    node_top = 'everness:mineral_sand',
    depth_top = 1,
    node_filler = 'everness:mineral_stone',
    depth_filler = 1,
    node_stone = 'everness:mineral_stone',
    node_riverbed = 'everness:mineral_sand',
    depth_riverbed = 2,
    node_dungeon = 'everness:mineral_stone_brick',
    node_dungeon_alt = 'everness:mineral_stone_brick_with_growth',
    node_dungeon_stair = 'stairs:stair_bamboo_wood',
    y_max = y_max,
    y_min = y_min,
    vertical_blend = 4,
    heat_point = 78,
    humidity_point = 58,
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:palm_tree_1',
    deco_type = 'schematic',
    place_on = { 'everness:mineral_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_mineral_waters' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_palm_tree.mts',
    flags = 'place_center_x, place_center_z',
    spawn_by = {
        'everness:mineral_water_source',
        'everness:mineral_stone_brick',
        'everness:mineral_stone_brick_with_growth',
        'everness:mineral_stone_brick_with_flower_growth',
        'everness:mineral_sandstone',
        'everness:mineral_sandstone_block'
    },
    num_spawn_by = 1,
    check_offset = -1,
})

minetest.register_decoration({
    name = 'everness:palm_tree_2',
    deco_type = 'schematic',
    place_on = { 'everness:mineral_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_mineral_waters' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_palm_tree.mts',
    flags = 'place_center_x, place_center_z',
    spawn_by = {
        'everness:mineral_water_source',
        'everness:mineral_stone_brick',
        'everness:mineral_stone_brick_with_growth',
        'everness:mineral_stone_brick_with_flower_growth',
        'everness:mineral_sandstone',
        'everness:mineral_sandstone_block'
    },
    num_spawn_by = 1,
    check_offset = 1,
})

minetest.register_decoration({
    name = 'everness:water_geyser',
    deco_type = 'simple',
    place_on = { 'everness:mineral_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_mineral_waters' },
    y_max = y_max,
    y_min = y_min,
    decoration = { 'everness:water_geyser' },
    spawn_by = {
        'everness:mineral_water_source',
        'everness:mineral_stone_brick',
        'everness:mineral_stone_brick_with_growth',
        'everness:mineral_stone_brick_with_flower_growth',
        'everness:mineral_sandstone',
        'everness:mineral_sandstone_block'
    },
    num_spawn_by = 1,
    check_offset = -1,
})

--
-- ABM
--

minetest.register_abm({
    label = 'everness:water_geyser',
    nodenames = { 'everness:water_geyser' },
    interval = 16,
    chance = 16,
    catch_up = false,
    action = function(pos, node)
        minetest.swap_node(pos, { name = 'everness:water_geyser_active' })
        minetest.get_node_timer(pos):start(1)
    end
})

--
-- On Generated
--

-- Get the content IDs for the nodes used
local c_everness_mineral_water_source = minetest.get_content_id('everness:mineral_water_source')
local c_everness_mineral_stone = minetest.get_content_id('everness:mineral_stone')
local c_everness_mineral_stone_brick = minetest.get_content_id('everness:mineral_stone_brick')
local c_everness_mineral_stone_brick_with_growth = minetest.get_content_id('everness:mineral_stone_brick_with_growth')
local c_everness_mineral_stone_brick_with_flower_growth = minetest.get_content_id('everness:mineral_stone_brick_with_flower_growth')
local c_everness_mineral_sand = minetest.get_content_id('everness:mineral_sand')
local c_everness_mineral_sandstone = minetest.get_content_id('everness:mineral_sandstone')
local c_everness_mineral_sandstone_block = minetest.get_content_id('everness:mineral_sandstone_block')
local c_everness_mineral_waters_marker = minetest.get_content_id('everness:mineral_waters_marker')

local pool_build_nodes = {
    {
        c_everness_mineral_stone,
        c_everness_mineral_stone_brick,
        c_everness_mineral_stone_brick_with_growth,
        c_everness_mineral_stone_brick_with_flower_growth
    },
    {
        c_everness_mineral_sandstone,
        c_everness_mineral_sandstone_block
    }
}

-- Localize data buffer table outside the loop, to be re-used for all
-- mapchunks, therefore minimising memory use
local data = {}
local water_level = tonumber(minetest.settings:get('water_level'))

local function find_irecursive(table, c_id)
    local found = false

    for i, v in ipairs(table) do
        if type(v) == 'table' then
            find_irecursive(v, c_id)
        end

        if c_id == v then
            found = true
            break
        end
    end

    return found
end

-- Called after generating a piece of world. Modifying nodes inside the area is a bit faster than usual.
minetest.register_on_generated(function(minp, maxp, blockseed)
    -- Start time of mapchunk generation.
    -- local t0 = os.clock()
    local rand = PcgRandom(blockseed)

    -- Load the voxelmanip with the result of engine mapgen
    local vm, emin, emax = minetest.get_mapgen_object('voxelmanip')
    -- 'area' is used later to get the voxelmanip indexes for positions
    local area = VoxelArea:new({ MinEdge = emin, MaxEdge = emax })
    -- Get the content ID data from the voxelmanip in the form of a flat array.
    -- Set the buffer parameter to use and reuse 'data' for this.
    vm:get_data(data)

    if maxp.y >= water_level then
        -- Above sea level
        local rand_version = rand:next(1, 2)

        if rand_version == 1 then
            for y = minp.y, maxp.y do
                local precision_perc = 75

                for z = minp.z, maxp.z do
                    for x = minp.x, maxp.x do
                        local ai = area:index(x, y, z)
                        local node_name = minetest.get_name_from_content_id(data[ai])
                        local node_def = minetest.registered_nodes[node_name]
                        local position = area:position(ai)
                        local biome_data = minetest.get_biome_data(position)

                        if not biome_data then
                            return
                        end

                        local biome_name = minetest.get_biome_name(biome_data.biome)

                        if not biome_name then
                            return
                        end

                        if
                            data[ai + area.ystride] == minetest.CONTENT_AIR
                            and node_def
                            and node_def.walkable
                            and biome_name == 'everness_mineral_waters'
                        then
                            local length = 5 + rand:next(0, 10)
                            local width = 5 + rand:next(0, 10)
                            local height = 3 + rand:next(0, 4)
                            local walkable_nodes = {}

                            -- find space for lake (walkable rectangle)
                            -- for hi = 1, height do
                                for li = 1, length do
                                    for wi = 1, width do
                                        local p = vector.new(position.x + li, position.y, position.z + wi)
                                        -- local p_above = vector.new(position.x + li, position.y + 1, position.z + wi)
                                        local n_name = minetest.get_name_from_content_id(data[area:indexp(p)])
                                        -- local n_name_above = minetest.get_name_from_content_id(data[area:indexp(p_above)])
                                        local n_def = minetest.registered_nodes[n_name]
                                        local b_data = minetest.get_biome_data(p)

                                        if not b_data then
                                            return
                                        end

                                        local b_name = minetest.get_biome_name(b_data.biome)

                                        if not b_name then
                                            return
                                        end

                                        if b_name ~= 'everness_mineral_waters'
                                            or minetest.get_item_group(n_name, 'tree') > 0
                                            or minetest.get_item_group(n_name, 'leaves') > 0
                                        then
                                            -- bordering with anohter biome, be more precise in placing
                                            precision_perc = 100
                                        end

                                        if n_def
                                            and n_def.walkable
                                            and b_name == 'everness_mineral_waters'
                                            -- and n_name_above == 'air'
                                            and minetest.get_item_group(n_name, 'tree') == 0
                                            and minetest.get_item_group(n_name, 'leaves') == 0
                                        then
                                            table.insert(walkable_nodes, p)
                                        end
                                    end
                                end
                            -- end

                            -- build pool (cuboid)
                            local pool_build_nodes_group = pool_build_nodes[rand:next(1, #pool_build_nodes)]

                            if #walkable_nodes >= (width * length / 100) * precision_perc then
                                -- offset y so the pools are sticking out / sinking in from the ground
                                local pos_offset = vector.new(position)
                                pos_offset.y = (position.y - height) + rand:next(0, math.ceil(height / 2))

                                for hi = 1, height do
                                    for li = 1, length do
                                        for wi = 1, width do
                                            local mineral_stone = pool_build_nodes_group[rand:next(1, #pool_build_nodes_group)]
                                            local p_offset = vector.new(position.x + li, pos_offset.y + hi, position.z + wi)
                                            local current_c_id = data[area:indexp(p_offset)]

                                            -- Check for water and build nodes before replacing, this will make pools connected and will not replace already built walls from another pool near by
                                            if hi == 1
                                                and current_c_id ~= c_everness_mineral_water_source
                                                and not find_irecursive(pool_build_nodes, current_c_id)
                                            then
                                                -- build pool floor
                                                data[area:indexp(p_offset)] = mineral_stone
                                            elseif hi ~= 1
                                                and (wi == 1 or wi == width)
                                                and current_c_id ~= c_everness_mineral_water_source
                                                and not find_irecursive(pool_build_nodes, current_c_id)
                                            then
                                                -- build pool wall
                                                data[area:indexp(p_offset)] = mineral_stone
                                            elseif hi ~= 1
                                                and (li == 1 or li == length)
                                                and (wi ~= 1 or wi ~= width)
                                                and current_c_id ~= c_everness_mineral_water_source
                                                and not find_irecursive(pool_build_nodes, current_c_id)
                                            then
                                                -- build pool wall
                                                data[area:indexp(p_offset)] = mineral_stone
                                            else
                                                -- fill in the pool with water
                                                data[area:indexp(p_offset)] = c_everness_mineral_water_source
                                            end

                                            -- place loot chest marker in the middle of the pool floor
                                            if hi == 2
                                                and height > 4
                                                and math.ceil(length / 2) == li
                                                and math.ceil(width / 2) == wi
                                                and data[area:indexp(p_offset) - area.ystride] ~= c_everness_mineral_water_source
                                                and rand:next(0, 100) < 3
                                            then
                                                data[area:indexp(p_offset)] = c_everness_mineral_waters_marker
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        elseif rand_version == 2 then
            for z = minp.z, maxp.z do
                for y = minp.y, maxp.y do
                    for x = minp.x, maxp.x do
                        local ai = area:index(x, y, z)
                        local c_current = data[ai]

                        -- +Y, -Y, +X, -X, +Z, -Z
                        -- top, bottom, right, left, front, back
                        -- above
                        -- local c_above = data[ai + area.ystride]
                        -- below
                        -- local c_below = data[ai - area.ystride]
                        -- right
                        local c_right = data[ai + 1]
                        -- left
                        local c_left = data[ai - 1]
                        -- front
                        local c_front = data[ai + (area.zstride * 2)]
                        -- back
                        local c_back = data[ai - (area.zstride * 2)]

                        local keep_going = true
                        local while_count = 1
                        local max_dig_depth = 11

                        if
                            c_current == c_everness_mineral_sand
                            and (
                                c_right == c_everness_mineral_sand
                                or c_right == c_everness_mineral_water_source
                                or c_right == c_everness_mineral_stone
                            )
                            and (
                                c_left == c_everness_mineral_sand
                                or c_left == c_everness_mineral_water_source
                                or c_left == c_everness_mineral_stone
                            )
                            and (
                                c_front == c_everness_mineral_sand
                                or c_front == c_everness_mineral_water_source
                                or c_front == c_everness_mineral_stone
                            )
                            and (
                                c_back == c_everness_mineral_sand
                                or c_back == c_everness_mineral_water_source
                                or c_back == c_everness_mineral_stone
                            )
                        then
                            -- dig below
                            while keep_going and while_count < max_dig_depth do
                                local while_index = ai - area.ystride * while_count

                                if
                                    -- below
                                    data[while_index] == c_everness_mineral_stone
                                    and (
                                        -- right
                                        data[while_index + 1 + area.ystride] == c_everness_mineral_sand
                                        or data[while_index + 1 + area.ystride] == c_everness_mineral_water_source
                                        or data[while_index + 1 + area.ystride] == c_everness_mineral_stone
                                    )
                                    and (
                                        -- left
                                        data[while_index - 1 + area.ystride] == c_everness_mineral_sand
                                        or data[while_index - 1 + area.ystride] == c_everness_mineral_water_source
                                        or data[while_index - 1 + area.ystride] == c_everness_mineral_stone
                                    )
                                    and (
                                        -- front
                                        data[while_index + area.zstride + area.ystride] == c_everness_mineral_sand
                                        or data[while_index + area.zstride + area.ystride] == c_everness_mineral_water_source
                                        or data[while_index + area.zstride + area.ystride] == c_everness_mineral_stone
                                    )
                                    and (
                                        -- back
                                        data[while_index - area.zstride + area.ystride] == c_everness_mineral_sand
                                        or data[while_index - area.zstride + area.ystride] == c_everness_mineral_water_source
                                        or data[while_index - area.zstride + area.ystride] == c_everness_mineral_stone
                                    )
                                then
                                    data[while_index + area.ystride] = c_everness_mineral_water_source
                                else
                                    keep_going = false
                                end

                                while_count = while_count + 1
                            end
                        end
                    end
                end
            end
        end

        vm:set_data(data)
        -- Generate all registered decorations within the VoxelManip `vm` and in the area from `pos1` to `pos2`
        minetest.generate_decorations(vm)
        -- Calculate lighting for what has been created.
        vm:calc_lighting()
        -- Liquid nodes were placed so set them flowing.
        vm:update_liquids()
        -- Write what has been created to the world.
        vm:write_to_map()
    end

    -- Print generation time of this mapchunk.
    -- local chugent = math.ceil((os.clock() - t0) * 1000)
    -- print('[lvm_example] Mapchunk generation time ' .. chugent .. ' ms')
end)
