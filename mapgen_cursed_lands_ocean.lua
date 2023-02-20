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

local y_max = Everness.settings.biomes.everness_cursed_lands_ocean.y_max
local y_min = Everness.settings.biomes.everness_cursed_lands_ocean.y_min

-- Cursed Lands Ocean

minetest.register_biome({
    name = 'everness_cursed_lands_ocean',
    node_top = 'everness:cursed_stone',
    depth_top = 1,
    node_filler = 'everness:cursed_stone',
    depth_filler = 3,
    node_riverbed = 'everness:cursed_stone',
    depth_riverbed = 2,
    node_cave_liquid = 'default:water_source',
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 45,
    humidity_point = 85,
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:cursed_lands_ocean_dry_tree',
    deco_type = 'schematic',
    place_on = {
        'everness:dirt_with_cursed_grass',
        'everness:cursed_dirt',
        'everness:cursed_sand',
        'everness:cursed_stone'
    },
    place_offset_y = 0,
    sidelen = 16,
    noise_params = {
        offset = 0.0015,
        scale = 0.0021,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_cursed_lands_ocean' },
    y_max = y_max,
    y_min = y_max - (y_max + 1),
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_dry_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

-- Spine Kelp

minetest.register_decoration({
    name = 'everness:sand_with_spine_kelp',
    deco_type = 'simple',
    place_on = { 'everness:cursed_stone' },
    place_offset_y = -1,
    sidelen = 16,
    noise_params = {
        offset = -0.04,
        scale = 0.1,
        spread = { x = 200, y = 200, z = 200 },
        seed = 87112,
        octaves = 3,
        persist = 0.7
    },
    biomes = { 'everness_cursed_lands_ocean' },
    y_max = y_max - (y_max + 5),
    y_min = y_max - (y_max + 10),
    flags = 'force_placement',
    decoration = 'everness:sand_with_spine_kelp',
    param2 = 48,
    param2_max = 96,
})
