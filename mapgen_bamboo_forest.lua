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

--
-- Register biomes
--

local y_max = Everness.settings.biomes.everness_bamboo_forest.y_max
local y_min = Everness.settings.biomes.everness_bamboo_forest.y_min

-- Bamboo Forest

minetest.register_biome({
    name = 'everness_bamboo_forest',
    node_top = 'everness:dirt_with_grass_1',
    depth_top = 1,
    node_filler = 'everness:dirt_1',
    depth_filler = 1,
    node_riverbed = 'default:sand',
    depth_riverbed = 2,
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 80,
    humidity_point = 60,
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:bamboo_forest_small_bamboo',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_grass_1' },
    sidelen = 80,
    fill_ratio = 0.1,
    biomes = { 'everness_bamboo_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_small_bamboo.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:bamboo_forest_large_bamboo',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_grass_1' },
    sidelen = 80,
    fill_ratio = 0.1,
    biomes = { 'everness_bamboo_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_large_bamboo.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

-- Jungle tree and log

minetest.register_decoration({
    name = 'everness:bamboo_forest_jungle_tree',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_grass_1' },
    sidelen = 16,
    noise_params = {
        offset = 0.0015,
        scale = 0.0021,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_bamboo_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('default') .. '/schematics/jungle_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:bamboo_forest_jungle_log',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_grass_1' },
    place_offset_y = 1,
    sidelen = 16,
    noise_params = {
        offset = 0.0015,
        scale = 0.0021,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_bamboo_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('default') .. '/schematics/jungle_log.mts',
    flags = 'place_center_x',
    rotation = 'random',
    spawn_by = 'everness:dirt_with_grass_1',
    num_spawn_by = 8,
})

local function register_grass_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:bamboo_forest_grass_' .. length,
        deco_type = 'simple',
        place_on = { 'everness:dirt_with_grass_1' },
        sidelen = 16,
        noise_params = {
            offset = offset,
            scale = scale,
            spread = { x = 200, y = 200, z = 200 },
            seed = 329,
            octaves = 3,
            persist = 0.6
        },
        biomes = { 'everness_bamboo_forest' },
        y_max = y_max,
        y_min = y_min,
        decoration = 'default:grass_' .. length,
    })
end

local function register_flower(seed, flower_name)
    minetest.register_decoration({
        name = 'everness:bamboo_forest_' .. flower_name,
        deco_type = 'simple',
        place_on = { 'everness:dirt_with_grass_1' },
        sidelen = 16,
        noise_params = {
            offset = -0.02,
            scale = 0.04,
            spread = { x = 200, y = 200, z = 200 },
            seed = seed,
            octaves = 3,
            persist = 0.6
        },
        biomes = { 'everness_bamboo_forest' },
        y_max = y_max,
        y_min = y_min,
        decoration = 'flowers:' .. flower_name,
    })
end

-- Bush

minetest.register_decoration({
    name = 'everness:bamboo_forest_bush',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_grass_1' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_bamboo_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('default') .. '/schematics/bush.mts',
    flags = 'place_center_x, place_center_z',
})

-- Blueberry bush

minetest.register_decoration({
    name = 'everness:bamboo_forest_blueberry_bush',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_grass_1' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 697,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_bamboo_forest' },
    y_max = y_max,
    y_min = y_min,
    place_offset_y = 1,
    schematic = minetest.get_modpath('default') .. '/schematics/blueberry_bush.mts',
    flags = 'place_center_x, place_center_z',
})

-- Grasses

register_grass_decoration(-0.03, 0.09, 5)
register_grass_decoration(-0.015, 0.075, 4)
register_grass_decoration(0, 0.06, 3)
register_grass_decoration(0.015, 0.045, 2)
register_grass_decoration(0.03, 0.03, 1)

-- Flowers

register_flower(436, 'rose')
register_flower(19822, 'tulip')
register_flower(1220999, 'dandelion_yellow')
register_flower(800081, 'chrysanthemum_green')
register_flower(36662, 'geranium')
register_flower(1133, 'viola')
register_flower(73133, 'dandelion_white')
register_flower(42, 'tulip_black')
