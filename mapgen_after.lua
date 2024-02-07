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
local c_water_source = minetest.get_content_id('mapgen_water_source')
local c_forsaken_desert_sand = minetest.get_content_id('everness:forsaken_desert_sand')
local c_forsaken_desert_chiseled_stone = minetest.get_content_id('everness:forsaken_desert_chiseled_stone')
local c_forsaken_desert_brick = minetest.get_content_id('everness:forsaken_desert_brick')
local c_forsaken_desert_engraved_stone = minetest.get_content_id('everness:forsaken_desert_engraved_stone')
-- Biome IDs
local biome_id_everness_cursed_lands_dunes = minetest.get_biome_id('everness:cursed_lands_dunes')
local biome_id_everness_cursed_lands_swamp = minetest.get_biome_id('everness:cursed_lands_swamp')
local biome_id_everness_cursed_lands_ocean = minetest.get_biome_id('everness:cursed_lands_ocean')
local biome_id_everness_crystal_forest_dunes = minetest.get_biome_id('everness:crystal_forest_dunes')
local biome_id_everness_crystal_forest_shore = minetest.get_biome_id('everness:crystal_forest_shore')
local biome_id_everness_crystal_forest_ocean = minetest.get_biome_id('everness:crystal_forest_ocean')
local water_level = tonumber(minetest.settings:get('water_level')) or 1

local chance = 20
local chance_sea_level = 10
local disp = 16

-- Localize data buffer table outside the loop, to be re-used for all
-- mapchunks, therefore minimising memory use.
local data = {}
local p2data = {}

minetest.register_on_generated(function(minp, maxp, blockseed)
    local rand = PcgRandom(blockseed)
    local biomemap = minetest.get_mapgen_object('biomemap')
    local gennotify = minetest.get_mapgen_object('gennotify')
    -- Load the voxelmanip with the result of engine mapgen
    local vm, emin, emax = minetest.get_mapgen_object('voxelmanip')
    -- 'area' is used later to get the voxelmanip indexes for positions
    local area = VoxelArea:new({ MinEdge = emin, MaxEdge = emax })
    -- Get the content ID data from the voxelmanip in the form of a flat array.
    -- Set the buffer parameter to use and reuse 'data' for this.
    vm:get_data(data)
    vm:get_param2_data(p2data)
    -- Side length of mapchunk
    local sidelength = maxp.x - minp.x + 1
    local x_disp = rand:next(0, disp)
    local z_disp = rand:next(0, disp)
    local schem_positions = {}
    local shared_args = {}

    -- on_data
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

    -- set data after they have been manipulated (above)
    vm:set_data(data)
    vm:set_param2_data(p2data)

    -- after_set_data
    -- can read (but cant and should not manipulate) voxelmanip `data`
    -- used for `place_schematic_on_vmanip` which will invalidate `data` therefore we are doing it after we set the data
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

            if maxp.y >= water_level then
                -- Above sea level or at water level
                if
                    water_level >= minp.y
                    and water_level <= maxp.y
                    and data[vi] == c_water_source
                then
                    --
                    -- Water Level
                    --
                    if
                        (
                            table.indexof(biomemap, biome_id_everness_cursed_lands_dunes) ~= -1
                            or table.indexof(biomemap, biome_id_everness_cursed_lands_swamp) ~= -1
                            or table.indexof(biomemap, biome_id_everness_cursed_lands_ocean) ~= -1
                        )
                        and rand:next(0, 100) < chance_sea_level
                    then
                        local schem = minetest.get_modpath('everness') .. '/schematics/everness_cursed_lands_deep_ocean_island.mts'

                        --
                        -- Cursed Lands Deep Ocean Island
                        --

                        local size = { x = 25, y = 23, z = 23 }
                        local size_x = math.round(size.x / 2)
                        local size_z = math.round(size.z / 2)
                        -- add Y displacement
                        local y_dis = 7
                        local schem_pos = vector.new(s_pos.x, s_pos.y - y_dis, s_pos.z)

                        -- find floor big enough
                        local indexes = Everness.find_content_in_vm_area(
                            vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                            vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                            {
                                c_water_source,
                                minetest.CONTENT_AIR
                            },
                            data,
                            area
                        )

                        if #indexes < size.x * size.z then
                            -- not enough space
                            return
                        end

                        -- enough space to place structure ?
                        local space_indexes = Everness.find_content_in_vm_area(
                            vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                            vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z),
                            {
                                c_water_source,
                                minetest.CONTENT_AIR
                            },
                            data,
                            area
                        )

                        if #space_indexes > (size.x * size.y * size.z) / 2 then
                            minetest.place_schematic_on_vmanip(
                                vm,
                                schem_pos,
                                schem,
                                'random',
                                nil,
                                true,
                                'place_center_x, place_center_z'
                            )

                            schem_positions.everness_cursed_lands_deep_ocean_island = schem_positions.everness_cursed_lands_deep_ocean_island or {}

                            table.insert(schem_positions.everness_cursed_lands_deep_ocean_island, {
                                pos = schem_pos,
                                minp = vector.new(s_pos.x - size_x, s_pos.y - y_dis, s_pos.z - size_z),
                                maxp = vector.new(s_pos.x + size_x, s_pos.y - y_dis + size.y, s_pos.z + size_z)
                            })

                            minetest.log('action', '[Everness] Cursed Lands Deep Ocean Island was placed at ' .. schem_pos:to_string())
                        end
                    elseif
                        (
                            table.indexof(biomemap, biome_id_everness_crystal_forest_dunes) ~= -1
                            or table.indexof(biomemap, biome_id_everness_crystal_forest_shore) ~= -1
                            or table.indexof(biomemap, biome_id_everness_crystal_forest_ocean) ~= -1
                        )
                        and rand:next(0, 100) < chance_sea_level
                    then
                        local schem = minetest.get_modpath('everness') .. '/schematics/everness_crystal_forest_ocean_shrine.mts'

                        --
                        -- Crystal Forest Ocean Shrine
                        --

                        local size = { x = 13, y = 16, z = 13 }
                        local size_x = math.round(size.x / 2)
                        local size_z = math.round(size.z / 2)
                        -- add Y displacement
                        local y_dis = 8
                        local schem_pos = vector.new(s_pos.x, s_pos.y - y_dis, s_pos.z)

                        -- find floor big enough
                        local indexes = Everness.find_content_in_vm_area(
                            vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                            vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                            {
                                c_water_source,
                                minetest.CONTENT_AIR
                            },
                            data,
                            area
                        )

                        if #indexes < size.x * size.z then
                            -- not enough space
                            return
                        end

                        -- enough space to place structure ?
                        local space_indexes = Everness.find_content_in_vm_area(
                            vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                            vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z),
                            {
                                c_water_source,
                                minetest.CONTENT_AIR
                            },
                            data,
                            area
                        )

                        if #space_indexes > (size.x * size.y * size.z) / 2 then
                            minetest.place_schematic_on_vmanip(
                                vm,
                                schem_pos,
                                schem,
                                'random',
                                nil,
                                true,
                                'place_center_x, place_center_z'
                            )

                            schem_positions.everness_crystal_forest_ocean_shrine = schem_positions.everness_crystal_forest_ocean_shrine or {}

                            table.insert(schem_positions.everness_crystal_forest_ocean_shrine, {
                                pos = schem_pos,
                                minp = vector.new(s_pos.x - size_x, s_pos.y - y_dis, s_pos.z - size_z),
                                maxp = vector.new(s_pos.x + size_x, s_pos.y - y_dis + size.y, s_pos.z + size_z)
                            })

                            minetest.log('action', '[Everness] Crystal Forest Ocean Shrine was placed at ' .. schem_pos:to_string())
                        end
                    end
                end
            else
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

    -- after_write_to_map
    -- Cannot read/write voxelmanip or its data
    -- Used for direct manipulation of the world chunk nodes where the definitions of nodes are available and node callback can be executed

    -- minetest.fix_light(minp, maxp)

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
