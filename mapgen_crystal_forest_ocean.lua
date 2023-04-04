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

local y_max = Everness.settings.biomes.everness_crystal_forest_ocean.y_max
local y_min = Everness.settings.biomes.everness_crystal_forest_ocean.y_min

-- Crystal Forest Ocean

minetest.register_biome({
    name = 'everness_crystal_forest_ocean',
    node_top = 'everness:crystal_sand',
    depth_top = 1,
    node_filler = 'everness:crystal_sand',
    depth_filler = 3,
    node_riverbed = 'everness:crystal_sand',
    depth_riverbed = 2,
    node_cave_liquid = 'default:water_source',
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 35,
    humidity_point = 50,
})

--
-- Register decorations
--

-- Coral reef

minetest.register_decoration({
    name = 'everness:crystal_forest_ocean_corals',
    deco_type = 'simple',
    place_on = { 'everness:crystal_sand' },
    place_offset_y = -1,
    sidelen = 4,
    noise_params = {
        offset = -4,
        scale = 4,
        spread = { x = 50, y = 50, z = 50 },
        seed = 7013,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_crystal_forest_ocean' },
    y_max = y_max,
    y_min = y_max - 10 > y_min and y_max - 10 or y_min,
    flags = 'force_placement',
    decoration = {
        'everness:crystal_coral_dark',
        'everness:crystal_coral_light',
        'everness:coral_skeleton'
    },
})
