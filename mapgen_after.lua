--[[
    Everness. Never ending discovery in Everness mapgen.
    Copyright (C) 2023 SaKeL <juraj.vajda@gmail.com>

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to juraj.vajda@gmail.com
--]]

-- Get the content IDs for the nodes used.
local c_air = minetest.get_content_id('air')
local c_dirt_with_grass_1 = minetest.get_content_id('everness:dirt_with_grass_1')
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

local deco_ids_baobab = {
    minetest.get_decoration_id('everness:baobab_savanna_baobab_tree_1'),
    minetest.get_decoration_id('everness:baobab_savanna_baobab_tree_2')
}

if #deco_ids_baobab > 1 then
    minetest.set_gen_notify('decoration', deco_ids_baobab)
end

-- Localise data buffer table outside the loop, to be re-used for all
-- mapchunks, therefore minimising memory use.
local data = {}

minetest.register_on_generated(function(minp, maxp, blockseed)
    local gennotify = minetest.get_mapgen_object('gennotify')

    local chance = 15
    local disp = 16
    local rotations = { '0', '90', '180', '270' }
    local rand = PcgRandom(blockseed)

    local vm, emin, emax = minetest.get_mapgen_object('voxelmanip')
    local area = VoxelArea:new({ MinEdge = emin, MaxEdge = emax })
    -- Get the content ID data from the voxelmanip in the form of a flat array.
    -- Set the buffer parameter to use and reuse 'data' for this.
    vm:get_data(data)
    local sidelength = maxp.x - minp.x + 1

    local x_disp = rand:next(0, disp)
    local z_disp = rand:next(0, disp)

    if maxp.y > 0 then
        --
        -- Baobab Tree - fix light
        --
        for _, deco_id in ipairs(deco_ids_baobab) do
            for _, pos in ipairs(gennotify['decoration#' .. deco_id] or {}) do
                minetest.fix_light(vector.offset(pos, -1, -1, -1), vector.offset(pos, 24, 39, 24))
            end
        end

        --
        -- Bamboo
        --
        local bamboos_pos = minetest.find_nodes_in_area_under_air(minp, maxp, 'everness:bamboo_3')

        for _, pos in ipairs(bamboos_pos) do
            local node_below = minetest.get_node(vector.new(pos.x, pos.y - 1, pos.z))

            -- get height of the generated bamboo
            local bamboo_height = 0
            local height_offset = 1
            local bamboo_below = node_below

            while minetest.get_item_group(bamboo_below.name, 'bamboo') > 0 do
                if bamboo_height > 1 then
                    bamboo_below = minetest.get_node(vector.new(pos.x, pos.y - height_offset, pos.z))
                end

                height_offset = height_offset + 1
                bamboo_height = bamboo_height + 1
            end

            -- add top bamboo nodes with leaves based on their generated heigth
            for i = 1, 3 do
                local node_name = 'everness:bamboo_4'

                if i == 2 and bamboo_height > 4 then
                    node_name = 'everness:bamboo_5'
                elseif i == 3 then
                    node_name = 'everness:bamboo_5'
                end

                minetest.swap_node(
                    vector.new(pos.x, pos.y + (i - 1), pos.z),
                    {
                        name = node_name,
                        param2 = node_below.param2
                    }
                )
            end
        end

        for y = minp.y, maxp.y do
            local vi = area:index(minp.x + sidelength / 2 + x_disp, y, minp.z + sidelength / 2 + z_disp)

            if data[vi + area.ystride] == c_air
                and (
                    data[vi] == c_dirt_with_grass_1
                    or data[vi] == c_dirt_with_rainforest_litter
                    or data[vi] == c_dirt_with_cursed_grass
                    or data[vi] == c_dirt_with_crystal_grass
                    or data[vi] == c_crystal_sand
                    or data[vi] == c_forsaken_desert_sand
                    or data[vi] == c_dry_ocean_dirt
                    or data[vi] == c_dirt_with_snow
                    or data[vi] == c_dirt_with_coniferous_litter
                )
            then
                local rotation = rotations[rand:next(1, #rotations)]
                local s_pos = area:position(vi)
                local biome_data = minetest.get_biome_data(s_pos)

                if not biome_data then
                    return
                end

                local biome_name = minetest.get_biome_name(biome_data.biome)

                if not biome_name then
                    return
                end

                if biome_name == 'everness_bamboo_forest' and rand:next(0, 100) < chance then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_japanese_shrine.mts'

                    --
                    -- Japanese Shrine
                    --

                    local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        rotation,
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Japanese Shrine was placed at ' .. schem_pos:to_string())
                elseif biome_name == 'rainforest' and rand:next(0, 100) < chance then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_jungle_temple.mts'

                    --
                    -- Jungle Temple
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y - 3, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        rotation,
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Jungle Temple was placed at ' .. schem_pos:to_string())
                elseif biome_name == 'everness_cursed_lands' and rand:next(0, 100) < chance then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_haunted_house.mts'

                    --
                    -- Haunted House
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y - 1, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        rotation,
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Haunted House was placed at ' .. schem_pos:to_string())
                elseif biome_name == 'everness_crystal_forest' and rand:next(0, 100) < chance then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_quartz_temple.mts'

                    --
                    -- Quartz Temple
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        rotation,
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Quartz Temple was placed at ' .. schem_pos:to_string())
                elseif (biome_name == 'everness_forsaken_desert' or biome_name == 'everness_forsaken_desert_ocean')
                    and rand:next(0, 100) < chance
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_desert_temple.mts'

                    --
                    -- Forsaken Desert Temple
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)

                    minetest.place_schematic_on_vmanip(
                        vm,
                        schem_pos,
                        schem,
                        rotation,
                        nil,
                        true,
                        'place_center_x, place_center_z'
                    )

                    minetest.log('action', '[Everness] Forsaken Desert Temple was placed at ' .. schem_pos:to_string())
                elseif (biome_name == 'coniferous_forest' or biome_name == 'taiga')
                    and rand:next(0, 100) < 100
                then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_giant_sequoia_tree.mts'

                    --
                    -- Giant Sequoia
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)

                    minetest.emerge_area(
                        vector.new(s_pos.x - 12, s_pos.y, s_pos.z - 12),
                        vector.new(s_pos.x + 12, s_pos.y + 75, s_pos.z + 12),
                        function(blockpos, action, calls_remaining, param)
                            Everness:emerge_area(blockpos, action, calls_remaining, param)
                        end,
                        {
                            callback = function()
                                local positions = minetest.find_nodes_in_area_under_air(
                                    vector.new(s_pos.x - 6, s_pos.y - 1, s_pos.z - 6),
                                    vector.new(s_pos.x + 6, s_pos.y + 1, s_pos.z + 6),
                                    {
                                        'default:dirt_with_snow',
                                        'default:dirt_with_coniferous_litter',
                                        'default:snow'
                                    })

                                if #positions < 137 then
                                    -- not enough space
                                    return
                                end

                                minetest.place_schematic(
                                    schem_pos,
                                    schem,
                                    rotation,
                                    nil,
                                    true,
                                    'place_center_x, place_center_z'
                                )

                                minetest.log('action', '[Everness] Giant Sequoia was placed at ' .. schem_pos:to_string())
                            end
                        }
                    )
                end
            end
        end

        vm:write_to_map(true)
        minetest.fix_light(minp, maxp)
    else
        -- Under
        for y = minp.y, maxp.y do
            local vi = area:index(minp.x + sidelength / 2 + x_disp, y, minp.z + sidelength / 2 + z_disp)

            if data[vi + area.ystride] == c_air
                and (
                    data[vi] == c_dirt_with_grass_1
                    or data[vi] == c_forsaken_desert_sand
                    or data[vi] == c_forsaken_desert_chiseled_stone
                    or data[vi] == c_forsaken_desert_brick
                    or data[vi] == c_forsaken_desert_engraved_stone
                )
            then
                local rotation = rotations[rand:next(1, #rotations)]
                local s_pos = area:position(vi)
                local biome_data = minetest.get_biome_data(s_pos)

                if not biome_data then
                    return
                end

                local biome_name = minetest.get_biome_name(biome_data.biome)

                if not biome_name then
                    return
                end

                if biome_name == 'everness_forsaken_desert_under' and rand:next(0, 100) < chance then
                    local schem = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_desert_temple_2.mts'

                    --
                    -- Forsaken Desert Temple 2
                    --

                    -- add Y displacement
                    local schem_pos = vector.new(s_pos.x, s_pos.y, s_pos.z)

                    -- find floor big enough
                    local positions = minetest.find_nodes_in_area_under_air(
                        vector.new(s_pos.x - 7, s_pos.y - 1, s_pos.z - 7),
                        vector.new(s_pos.x + 7, s_pos.y + 1, s_pos.z + 7),
                        {
                            'everness:forsaken_desert_sand',
                            'everness:forsaken_desert_chiseled_stone',
                            'everness:forsaken_desert_brick',
                            'everness:forsaken_desert_engraved_stone',
                            'default:stone',
                            'default:sand',
                            'default:gravel',
                            'default:stone_with_coal',
                            'default:stone_with_iron',
                            'default:stone_with_tin',
                            'default:stone_with_gold',
                            'default:stone_with_mese',
                            'default:stone_with_diamond',
                            'everness:cave_barrel_cactus',
                            'everness:venus_trap',
                            'everness:illumi_root',
                        })

                    if #positions < 49 then
                        -- not enough space
                        return
                    end

                    -- enough air to place structure ?
                    local air_positions = minetest.find_nodes_in_area(
                        vector.new(s_pos.x - 7, s_pos.y, s_pos.z - 7),
                        vector.new(s_pos.x + 7, s_pos.y + 17, s_pos.z + 7),
                        'air', true)

                    if air_positions.air and #air_positions.air > (16 * 15 * 16)  / 2 then
                        minetest.place_schematic_on_vmanip(
                            vm,
                            schem_pos,
                            schem,
                            rotation,
                            nil,
                            true,
                            'place_center_x, place_center_z'
                        )

                        minetest.log('action', '[Everness] Forsaken Desert Temple 2 was placed at ' .. schem_pos:to_string())
                    end
                end
            end
        end

        vm:write_to_map(true)
        minetest.fix_light(minp, maxp)
    end
end)
