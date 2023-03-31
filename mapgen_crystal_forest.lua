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

local y_max = Everness.settings.biomes.everness_crystal_forest.y_max
local y_min = Everness.settings.biomes.everness_crystal_forest.y_min

-- Crystal Forest

minetest.register_biome({
    name = 'everness_crystal_forest',
    node_top = 'everness:dirt_with_crystal_grass',
    depth_top = 1,
    node_filler = 'everness:crystal_dirt',
    depth_filler = 1,
    node_riverbed = 'everness:crystal_dirt',
    depth_riverbed = 2,
    node_dungeon = 'everness_mapgen_cobble',
    node_dungeon_alt = 'everness_mapgen_mossycobble',
    node_dungeon_stair = 'everness_mapgen_stair_cobblestair_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 35,
    humidity_point = 50,
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:crystal_forest_crystal_mushrooms',
    deco_type = 'simple',
    place_on = { 'everness:dirt_with_crystal_grass' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.006,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_crystal_forest' },
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:crystal_mushrooms',
})

minetest.register_decoration({
    name = 'everness:crystal_forest_crystal_tree',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_crystal_grass' },
    place_offset_y = 0,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_crystal_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:crystal_forest_crystal_tree_large',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_crystal_grass' },
    place_offset_y = 0,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.001,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_crystal_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_tree_large.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

local function register_crystal_grass_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:crystal_forest_crystal_grass_' .. length,
        deco_type = 'simple',
        place_on = { 'everness:dirt_with_crystal_grass' },
        sidelen = 16,
        noise_params = {
            offset = offset,
            scale = scale,
            spread = { x = 200, y = 200, z = 200 },
            seed = 329,
            octaves = 3,
            persist = 0.6
        },
        biomes = { 'everness_crystal_forest' },
        y_max = y_max,
        y_min = y_min,
        decoration = 'everness:crystal_grass_' .. length,
    })
end

-- Crystal Grasses

register_crystal_grass_decoration(-0.03, 0.09, 3)
register_crystal_grass_decoration(-0.015, 0.075, 2)
register_crystal_grass_decoration(0, 0.06, 1)

minetest.register_decoration({
    name = 'everness:crystal_forest_crystal_bush',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_crystal_grass' },
    sidelen = 16,
    place_offset_y = 1,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_crystal_forest' },
    y_max = y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_bush.mts',
    flags = 'place_center_x, place_center_z',
})
