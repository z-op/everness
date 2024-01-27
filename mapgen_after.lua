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
local c_dirt_with_grass_1 = minetest.get_content_id('everness:dirt_with_grass_1')
local c_dirt_with_grass_extras_1 = minetest.get_content_id('everness:dirt_with_grass_extras_1')
local c_dirt_with_grass_extras_2 = minetest.get_content_id('everness:dirt_with_grass_extras_2')
local c_dirt_with_rainforest_litter = minetest.get_content_id('default:dirt_with_rainforest_litter')
local c_dirt_with_cursed_grass = minetest.get_content_id('everness:dirt_with_cursed_grass')
local c_dirt_with_crystal_grass = minetest.get_content_id('everness:dirt_with_crystal_grass')
local c_crystal_sand = minetest.get_content_id('everness:crystal_sand')
local c_dry_ocean_dirt = minetest.get_content_id('everness:dry_ocean_dirt')
local c_dirt_with_snow = minetest.get_content_id('default:dirt_with_snow')
local c_dirt_with_coniferous_litter = minetest.get_content_id('default:dirt_with_coniferous_litter')
local c_forsaken_desert_sand = minetest.get_content_id('everness:forsaken_desert_sand')
local c_forsaken_desert_chiseled_stone = minetest.get_content_id('everness:forsaken_desert_chiseled_stone')
local c_forsaken_desert_brick = minetest.get_content_id('everness:forsaken_desert_brick')
local c_forsaken_desert_engraved_stone = minetest.get_content_id('everness:forsaken_desert_engraved_stone')
local c_frosted_snowblock = minetest.get_content_id('everness:frosted_snowblock')
local c_frosted_ice = minetest.get_content_id('everness:frosted_ice')
local c_everness_mineral_water_source = minetest.get_content_id('everness:mineral_water_source')
local c_everness_mineral_sand = minetest.get_content_id('everness:mineral_sand')

-- Localize data buffer table outside the loop, to be re-used for all
-- mapchunks, therefore minimising memory use.
local data = {}
local chance = 15
local disp = 16
local water_level = tonumber(minetest.settings:get('water_level'))

minetest.register_on_generated(function(minp, maxp, blockseed)
    local rand = PcgRandom(blockseed)
    -- Load the voxelmanip with the result of engine mapgen
    local vm, emin, emax = minetest.get_mapgen_object('voxelmanip')
    -- 'area' is used later to get the voxelmanip indexes for positions
    local area = VoxelArea:new({ MinEdge = emin, MaxEdge = emax })
    -- Get the content ID data from the voxelmanip in the form of a flat array.
    -- Set the buffer parameter to use and reuse 'data' for this.
    vm:get_data(data)
    -- Side length of mapchunk
    local sidelength = maxp.x - minp.x + 1
    local x_disp = rand:next(0, disp)
    local z_disp = rand:next(0, disp)
    local schem_positions = {}

    for y = minp.y, maxp.y do
        local vi = area:index(minp.x + sidelength / 2 + x_disp, y, minp.z + sidelength / 2 + z_disp)

        if data[vi + area.ystride] == minetest.CONTENT_AIR then
            local s_pos = area:position(vi)

            if maxp.y >= water_level then
                -- Above sea level
                if
                    (
                        data[vi] == c_dirt_with_grass_1
                        or data[vi] == c_dirt_with_grass_extras_1
                        or data[vi] == c_dirt_with_grass_extras_2
                    )
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_japanese_shrine.mts'

                    --
                    -- Japanese Shrine
                    --

                    local size = { x = 11, y = 19, z = 15 }
                    local size_x = math.round(size.x / 2)
                    local size_z = math.round(size.z / 2)
                    local schem_pos = vector.new(s_pos)

                    -- find floor big enough
                    local positions = minetest.find_nodes_in_area_under_air(
                        vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                        {
                            'everness:dirt_with_grass_1'
                        }
                    )
                    -- Can force over these blocks
                    local force_positions = minetest.find_nodes_in_area(
                        vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                        {
                            'everness:dirt_with_grass_extras_1',
                            'everness:dirt_with_grass_extras_2',
                            'group:bamboo',
                            'group:flower',
                            'group:leaves'
                        }
                    )

                    if #positions + #force_positions < size.x * size.z then
                        -- not enough space
                        return
                    end

                    -- enough air to place structure ?
                    local air_positions = minetest.find_nodes_in_area(
                        vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z),
                        {
                            'air',
                            'group:bamboo',
                            'group:flower',
                            'group:leaves'
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

                        schem_positions.everness_japanese_shrine = schem_positions.everness_japanese_shrine or {}

                        table.insert(schem_positions.everness_japanese_shrine, {
                            pos = schem_pos,
                            minp = vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                            maxp = vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z)
                        })

                        minetest.log('action', '[Everness] Japanese Shrine was placed at ' .. schem_pos:to_string())
                    end
                elseif
                    data[vi] == c_dirt_with_rainforest_litter
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_jungle_temple.mts'

                    --
                    -- Jungle Temple
                    --

                    local size = { x = 12, y = 14, z = 15 }
                    local size_x = math.round(size.x / 2)
                    local size_z = math.round(size.z / 2)
                    -- add Y displacement
                    local y_dis = 3
                    local schem_pos = vector.new(s_pos.x, s_pos.y - y_dis, s_pos.z)

                    -- find floor big enough
                    local positions = minetest.find_nodes_in_area_under_air(
                        vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                        {
                            'default:dirt_with_rainforest_litter'
                        }
                    )
                    -- Can force over these blocks
                    local force_positions = minetest.find_nodes_in_area(
                        vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                        {
                            'group:tree',
                            'group:flower',
                            'group:flora',
                            'group:leaves',
                            'fireflies:firefly',
                            'fireflies:hidden_firefly',
                        }
                    )

                    if #positions + #force_positions < size.x * size.z then
                        -- not enough space
                        return
                    end

                    -- enough air to place structure ?
                    local air_positions = minetest.find_nodes_in_area(
                        vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z),
                        {
                            'air',
                            'group:tree',
                            'group:flora',
                            'group:leaves'
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

                        schem_positions.everness_jungle_temple = schem_positions.everness_jungle_temple or {}

                        table.insert(schem_positions.everness_jungle_temple, {
                            pos = schem_pos,
                            minp = vector.new(s_pos.x - size_x, s_pos.y - y_dis, s_pos.z - size_z),
                            maxp = vector.new(s_pos.x + size_x, s_pos.y - y_dis + size.y, s_pos.z + size_z)
                        })

                        minetest.log('action', '[Everness] Jungle Temple was placed at ' .. schem_pos:to_string())
                    end

                elseif
                    data[vi] == c_dirt_with_cursed_grass
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_haunted_house.mts'

                    --
                    -- Haunted House
                    --

                    local size = { x = 11, y = 22, z = 10 }
                    local size_x = math.round(size.x / 2)
                    local size_z = math.round(size.z / 2)
                    -- add Y displacement
                    local y_dis = 1
                    local schem_pos = vector.new(s_pos.x, s_pos.y - y_dis, s_pos.z)

                    -- find floor big enough
                    local positions = minetest.find_nodes_in_area_under_air(
                        vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                        {
                            'everness:dirt_with_cursed_grass'
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

                        schem_positions.everness_haunted_house = schem_positions.everness_haunted_house or {}

                        table.insert(schem_positions.everness_haunted_house, {
                            pos = schem_pos,
                            minp = vector.new(s_pos.x - size_x, s_pos.y - y_dis, s_pos.z - size_z),
                            maxp = vector.new(s_pos.x + size_x, s_pos.y - y_dis + size.y, s_pos.z + size_z)
                        })

                        minetest.log('action', '[Everness] Haunted House was placed at ' .. schem_pos:to_string())
                    end
                elseif
                    (
                        data[vi] == c_dirt_with_crystal_grass
                        or data[vi] == c_crystal_sand
                    )
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_quartz_temple.mts'

                    --
                    -- Quartz Temple
                    --

                    local size = { x = 16, y = 13, z = 16 }
                    local size_x = math.round(size.x / 2)
                    local size_z = math.round(size.z / 2)
                    local schem_pos = vector.new(s_pos)

                    -- find floor big enough
                    local positions = minetest.find_nodes_in_area_under_air(
                        vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                        {
                            'everness:dirt_with_crystal_grass',
                            'everness:crystal_sand'
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

                        schem_positions.everness_quartz_temple = schem_positions.everness_quartz_temple or {}

                        table.insert(schem_positions.everness_quartz_temple, {
                            pos = schem_pos,
                            minp = vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                            maxp = vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z)
                        })

                        minetest.log('action', '[Everness] Quartz Temple was placed at ' .. schem_pos:to_string())
                    end

                elseif
                    (
                        data[vi] == c_forsaken_desert_sand
                        or data[vi] == c_dry_ocean_dirt
                    )
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_desert_temple.mts'

                    --
                    -- Forsaken Desert Temple
                    --

                    local size = { x = 9, y = 16, z = 9 }
                    local size_x = math.round(size.x / 2)
                    local size_z = math.round(size.z / 2)
                    local schem_pos = vector.new(s_pos)

                    -- find floor big enough
                    local positions = minetest.find_nodes_in_area_under_air(
                        vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                        {
                            'everness:forsaken_desert_sand',
                            'everness:dry_ocean_dirt'
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

                        schem_positions.everness_forsaken_desert_temple = schem_positions.everness_forsaken_desert_temple or {}

                        table.insert(schem_positions.everness_forsaken_desert_temple, {
                            pos = schem_pos,
                            minp = vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                            maxp = vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z)
                        })

                        minetest.log('action', '[Everness] Forsaken Desert Temple was placed at ' .. schem_pos:to_string())
                    end
                elseif
                    (
                        data[vi] == c_dirt_with_snow
                        or data[vi] == c_dirt_with_coniferous_litter
                    )
                    and rand:next(0, 100) < 100
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_giant_sequoia_tree.mts'

                    --
                    -- Giant Sequoia
                    --

                    local size = { x = 25, y = 75, z = 25 }
                    local size_x = math.round(size.x / 2)
                    local size_z = math.round(size.z / 2)
                    local schem_pos = vector.new(s_pos)

                    minetest.emerge_area(
                        vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z),
                        function(blockpos, action, calls_remaining, param)
                            Everness:emerge_area(blockpos, action, calls_remaining, param)
                        end,
                        {
                            callback = function()
                                -- find floor big enough
                                local positions = minetest.find_nodes_in_area_under_air(
                                    vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                                    vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                                    {
                                        'default:dirt_with_snow',
                                        'default:dirt_with_coniferous_litter',
                                        'default:snow'
                                    })

                                if #positions < size.x * size.z then
                                    -- not enough space
                                    return
                                end

                                minetest.place_schematic(
                                    schem_pos,
                                    schem,
                                    'random',
                                    nil,
                                    true,
                                    'place_center_x, place_center_z'
                                )

                                minetest.log('action', '[Everness] Giant Sequoia was placed at ' .. schem_pos:to_string())
                            end
                        }
                    )
                elseif
                    (
                        data[vi] == c_frosted_snowblock
                        or data[vi] == c_frosted_ice
                    )
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_frosted_icesheet_igloo.mts'

                    --
                    -- Igloo
                    --

                    local size = { x = 16, y = 13, z = 16 }
                    local size_x = math.round(size.x / 2)
                    local size_z = math.round(size.z / 2)
                    -- add Y displacement
                    local y_dis = 8
                    local schem_pos = vector.new(s_pos.x, s_pos.y - y_dis, s_pos.z)

                    -- find floor big enough
                    local positions = minetest.find_nodes_in_area_under_air(
                        vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                        {
                            'everness:frosted_snowblock',
                            'everness:frosted_ice'
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

                        schem_positions.everness_frosted_icesheet_igloo = schem_positions.everness_frosted_icesheet_igloo or {}

                        table.insert(schem_positions.everness_frosted_icesheet_igloo, {
                            pos = schem_pos,
                            minp = vector.new(s_pos.x - size_x, s_pos.y - y_dis, s_pos.z - size_z),
                            maxp = vector.new(s_pos.x + size_x, s_pos.y - y_dis + size.y, s_pos.z + size_z)
                        })

                        minetest.log('action', '[Everness] Igloo was placed at ' .. schem_pos:to_string())
                    end
                elseif
                    (
                        data[vi] == c_everness_mineral_water_source
                        or data[vi] == c_everness_mineral_sand
                    )
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_mineral_waters_tower.mts'

                    --
                    -- Mineral Waters Tower
                    --

                    local size = { x = 7, y = 16, z = 9 }
                    local size_x = math.round(size.x / 2)
                    local size_z = math.round(size.z / 2)
                    local schem_pos = vector.new(s_pos)

                    -- find floor big enough
                    local positions = minetest.find_nodes_in_area_under_air(
                        vector.new(s_pos.x - size_x, s_pos.y - 1, s_pos.z - size_z),
                        vector.new(s_pos.x + size_x, s_pos.y + 1, s_pos.z + size_z),
                        {
                            'everness:mineral_sand',
                            'everness:mineral_water_source'
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
                        { 'air' }
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

                        schem_positions.everness_mineral_waters_tower = schem_positions.everness_mineral_waters_tower or {}

                        table.insert(schem_positions.everness_mineral_waters_tower, {
                            pos = schem_pos,
                            minp = vector.new(s_pos.x - size_x, s_pos.y, s_pos.z - size_z),
                            maxp = vector.new(s_pos.x + size_x, s_pos.y + size.y, s_pos.z + size_z)
                        })

                        minetest.log('action', '[Everness] Mineral Waters Tower was placed at ' .. schem_pos:to_string())
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
    minetest.fix_light(minp, maxp)

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
