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

-- Get the content IDs for the nodes used.
local c_forsaken_desert_sand = minetest.get_content_id('everness:forsaken_desert_sand')
local c_forsaken_desert_chiseled_stone = minetest.get_content_id('everness:forsaken_desert_chiseled_stone')
local c_forsaken_desert_brick = minetest.get_content_id('everness:forsaken_desert_brick')
local c_forsaken_desert_engraved_stone = minetest.get_content_id('everness:forsaken_desert_engraved_stone')

local chance = 20
local disp = 16
local water_level = tonumber(minetest.settings:get('water_level')) or 1

-- Localize data buffer table outside the loop, to be re-used for all
-- mapchunks, therefore minimising memory use.
local data = {}
local p2data = {}

minetest.register_on_generated(function(minp, maxp, blockseed)
    local rand = PcgRandom(blockseed)
    -- Array containing the biome IDs of nodes in the most recently generated chunk by the current mapgen
    local biomemap = minetest.get_mapgen_object('biomemap')
    -- Table mapping requested generation notification types to arrays of positions at which the corresponding generated structures are located within the current chunk
    local gennotify = minetest.get_mapgen_object('gennotify')
    -- Load the voxelmanip with the result of engine mapgen
    local vm, emin, emax = minetest.get_mapgen_object('voxelmanip')
    -- 'area' is used later to get the voxelmanip indexes for positions
    local area = VoxelArea:new({ MinEdge = emin, MaxEdge = emax })
    -- Get the content ID data from the voxelmanip in the form of a flat array.
    -- Set the buffer parameter to use and reuse 'data' for this.
    vm:get_data(data)
    -- Raw `param2` data read into the `VoxelManip` object
    vm:get_param2_data(p2data)
    -- Side length of mapchunk
    local sidelength = maxp.x - minp.x + 1
    local x_disp = rand:next(0, disp)
    local z_disp = rand:next(0, disp)
    local schem_positions = {}
    local shared_args = {}

    --
    -- on_data
    --
    -- read/write to `data` what will be eventually saved (set_data)
    -- used for voxelmanip `data` manipulation
    for _, def in ipairs(Everness.on_generated_queue) do
        if def.can_run(biomemap) and def.on_data then
            shared_args[def.name] = shared_args[def.name] or {}
            -- print('--- on_data', def.name, minp:to_string(), maxp:to_string())
            def.on_data(minp, maxp, area, data, p2data, gennotify, rand, shared_args[def.name])
            -- print('shared_args', dump(shared_args))
        end
    end

    -- set data after they have been manipulated (from above)
    vm:set_data(data)
    vm:set_param2_data(p2data)

    --
    -- after_set_data
    --
    -- can read (but cant and should not manipulate) voxelmanip `data`
    -- used for `place_schematic_on_vmanip` which will invalidate `data`
    -- therefore we are doing it after we set the data
    for _, def in ipairs(Everness.on_generated_queue) do
        if def.can_run(biomemap) and def.after_set_data then
            shared_args[def.name] = shared_args[def.name] or {}
            -- print('after_set_data', def.name, minp:to_string(), maxp:to_string())
            def.after_set_data(minp, maxp, vm, area, data, p2data, gennotify, rand, shared_args[def.name])
        end
    end

    for y = minp.y, maxp.y do
        local vi = area:index(minp.x + sidelength / 2 + x_disp, y, minp.z + sidelength / 2 + z_disp)

        if data[vi + area.ystride] == minetest.CONTENT_AIR then
            local s_pos = area:position(vi)

            if maxp.y < water_level then
                -- Under sea level (Caves)
                if
                    (
                        data[vi] == c_forsaken_desert_sand
                        or data[vi] == c_forsaken_desert_chiseled_stone
                        or data[vi] == c_forsaken_desert_brick
                        or data[vi] == c_forsaken_desert_engraved_stone
                    )
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_desert_temple_2.mts'

                    --
                    -- Forsaken Desert Temple 2
                    --

                    local size = { x = 16, y = 17, z = 15 }
                    local size_x = math.round(size.x / 2)
                    local size_z = math.round(size.z / 2)
                    local schem_pos = vector.new(s_pos)

                    -- find floor big enough
                    local positions = minetest.find_nodes_in_area_under_air(
                        vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                        {
                            'everness:forsaken_desert_sand',
                            'everness:forsaken_desert_chiseled_stone',
                            'everness:forsaken_desert_brick',
                            'everness:forsaken_desert_engraved_stone',
                            'group:stone',
                            'group:sand',
                            'group:everness_sand',
                            'default:gravel',
                            'default:stone_with_coal',
                            'default:stone_with_iron',
                            'default:stone_with_tin',
                            'default:stone_with_gold',
                            'default:stone_with_mese',
                            'default:stone_with_diamond',
                            'everness:cave_barrel_cactus',
                            'everness:venus_trap',
                            'group:flora',
                            'everness:quartz_ore',
                            'everness:stone_with_pyrite',
                        }
                    )

                    if #positions < size.x * size.z then
                        -- not enough space
                        return
                    end

                    -- enough air to place structure ?
                    local air_positions = minetest.find_nodes_in_area(
                        vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z),
                        {
                            'air'
                        }
                    )

                    if #air_positions > (size.x * size.y * size.z) / 2 then
                        minetest.place_schematic_on_vmanip(
                            vm,
                            schem_pos,
                            schem,
                            'random',
                            nil,
                            true,
                            'place_center_x, place_center_z'
                        )

                        schem_positions.everness_forsaken_desert_temple_2 = schem_positions.everness_forsaken_desert_temple_2 or {}

                        table.insert(schem_positions.everness_forsaken_desert_temple_2, {
                            pos = schem_pos,
                            minp = vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                            maxp = vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z)
                        })

                        minetest.log('action', '[Everness] Forsaken Desert Temple 2 was placed at ' .. schem_pos:to_string())
                    end
                end
            end
        end
    end

    -- Set the lighting within the `VoxelManip` to a uniform value
    vm:set_lighting({ day = 0, night = 0 }, minp, maxp)
    -- Calculate lighting for what has been created.
    vm:calc_lighting()
    -- Liquid nodes were placed so set them flowing.
    vm:update_liquids()
    -- Write what has been created to the world.
    vm:write_to_map()

    --
    -- after_write_to_map
    --
    -- Cannot read/write voxelmanip or its data
    -- Used for direct manipulation of the world chunk nodes where the
    -- definitions of nodes are available and node callback can be executed
    -- or e.g. for `minetest.fix_light`

    for _, def in ipairs(Everness.on_generated_queue) do
        if def.can_run(biomemap) and def.after_write_to_map then
            shared_args[def.name] = shared_args[def.name] or {}
            -- print('after_write_to_map', def.name, minp:to_string(), maxp:to_string())
            def.after_write_to_map(shared_args[def.name], gennotify)
        end
    end

    -- Populate loot chests
    for name, tbl in pairs(schem_positions) do
        if next(tbl) then
            for i, v in ipairs(tbl) do
                local chest_positions = minetest.find_nodes_in_area(
                    v.minp,
                    v.maxp,
                    { 'everness:chest' }
                )

                if #chest_positions > 0 then
                    Everness:populate_loot_chests(chest_positions)
                end
            end
        end
    end
end)
