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

-- Coral Forest

minetest.register_biome({
    name = 'everness_coral_forest',
    node_top = 'everness:dirt_with_coral_grass',
    depth_top = 1,
    node_filler = 'everness:coral_dirt',
    depth_filler = 1,
    node_riverbed = 'everness:coral_dirt',
    depth_riverbed = 2,
    node_dungeon = 'everness:coral_desert_cobble',
    node_dungeon_alt = 'everness:coral_desert_mossy_cobble',
    node_dungeon_stair = 'stairs:stair_coral_desert_cobble',
    y_max = 31000,
    y_min = 6,
    heat_point = 60,
    humidity_point = 50,
})

minetest.register_biome({
    name = 'everness_coral_forest_dunes',
    node_top = 'everness:coral_sand',
    depth_top = 1,
    node_filler = 'everness:coral_sand',
    depth_filler = 3,
    node_riverbed = 'everness:coral_sand',
    depth_riverbed = 2,
    node_dungeon = 'everness:coral_desert_cobble',
    node_dungeon_alt = 'everness:coral_desert_mossy_cobble',
    node_dungeon_stair = 'stairs:stair_coral_desert_cobble',
    vertical_blend = 1,
    y_max = 5,
    y_min = 4,
    heat_point = 60,
    humidity_point = 50,
})

minetest.register_biome({
    name = 'everness_coral_forest_ocean',
    node_top = 'everness:coral_white_sand',
    depth_top = 1,
    node_filler = 'everness:coral_white_sand',
    depth_filler = 3,
    node_riverbed = 'everness:coral_white_sand',
    depth_riverbed = 2,
    node_cave_liquid = 'default:water_source',
    node_dungeon = 'everness:coral_desert_cobble',
    node_dungeon_alt = 'everness:coral_desert_mossy_cobble',
    node_dungeon_stair = 'stairs:stair_coral_desert_cobble',
    y_max = 3,
    y_min = -255,
    heat_point = 60,
    humidity_point = 50,
})

minetest.register_biome({
    name = 'everness_coral_forest_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'everness:coral_desert_cobble',
    node_dungeon_alt = 'everness:coral_desert_mossy_cobble',
    node_dungeon_stair = 'stairs:stair_coral_desert_cobble',
    y_max = -256,
    y_min = -31000,
    heat_point = 60,
    humidity_point = 50,
})

-- Frosted Lands

minetest.register_biome({
    name = 'everness_frosted_icesheet',
    node_dust = 'everness:frosted_snowblock',
    node_top = 'everness:frosted_snowblock',
    depth_top = 1,
    node_filler = 'everness:frosted_snowblock',
    depth_filler = 3,
    node_stone = 'everness:frosted_cave_ice',
    node_water_top = 'everness:frosted_ice',
    depth_water_top = 2,
    node_river_water = 'everness:frosted_ice',
    node_riverbed = 'default:gravel',
    depth_riverbed = 2,
    node_dungeon = 'everness:icecobble',
    node_dungeon_alt = 'everness:snowcobble',
    node_dungeon_stair = 'stairs:stair_ice',
    y_max = 31000,
    y_min = -8,
    heat_point = 0,
    humidity_point = 93,
})

minetest.register_biome({
    name = 'everness_frosted_icesheet_ocean',
    node_top = 'default:sand',
    depth_top = 1,
    node_filler = 'default:sand',
    depth_filler = 3,
    node_water_top = 'everness:frosted_ice',
    depth_water_top = 2,
    node_cave_liquid = 'default:water_source',
    node_dungeon = 'everness:icecobble',
    node_dungeon_alt = 'everness:snowcobble',
    node_dungeon_stair = 'stairs:stair_ice',
    y_max = -9,
    y_min = -255,
    heat_point = 0,
    humidity_point = 93,
})

minetest.register_biome({
    name = 'everness_frosted_icesheet_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'everness:icecobble',
    node_dungeon_alt = 'everness:snowcobble',
    node_dungeon_stair = 'stairs:stair_ice',
    y_max = -256,
    y_min = -31000,
    heat_point = 0,
    humidity_point = 93,
})

-- Cursed Lands

minetest.register_biome({
    name = 'everness_cursed_lands',
    node_top = 'everness:dirt_with_cursed_grass',
    depth_top = 1,
    node_filler = 'everness:cursed_dirt',
    depth_filler = 1,
    node_riverbed = 'everness:cursed_dirt',
    depth_riverbed = 2,
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = 31000,
    y_min = 6,
    heat_point = 45,
    humidity_point = 85,
})

minetest.register_biome({
    name = 'everness_cursed_lands_dunes',
    node_top = 'everness:cursed_sand',
    depth_top = 1,
    node_filler = 'everness:cursed_sand',
    depth_filler = 3,
    node_riverbed = 'everness:cursed_sand',
    depth_riverbed = 2,
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    vertical_blend = 1,
    y_max = 5,
    y_min = 1,
    heat_point = 45,
    humidity_point = 85,
})

minetest.register_biome({
    name = 'everness_cursed_lands_swamp',
    node_top = 'everness:cursed_stone',
    depth_top = 1,
    node_filler = 'everness:cursed_stone',
    depth_filler = 3,
    node_riverbed = 'everness:cursed_stone',
    depth_riverbed = 2,
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = 0,
    y_min = -1,
    heat_point = 45,
    humidity_point = 85,
})

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
    y_max = -2,
    y_min = -255,
    heat_point = 45,
    humidity_point = 85,
})

minetest.register_biome({
    name = 'everness_cursed_lands_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = -256,
    y_min = -31000,
    heat_point = 45,
    humidity_point = 85,
})

-- Crystal Forest

minetest.register_biome({
    name = 'everness_crystal_forest',
    node_top = 'everness:dirt_with_crystal_grass',
    depth_top = 1,
    node_filler = 'everness:crystal_dirt',
    depth_filler = 1,
    node_riverbed = 'everness:crystal_dirt',
    depth_riverbed = 2,
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = 31000,
    y_min = 6,
    heat_point = 35,
    humidity_point = 50,
})

minetest.register_biome({
    name = 'everness_crystal_forest_dunes',
    node_top = 'everness:crystal_sand',
    depth_top = 1,
    node_filler = 'everness:crystal_sand',
    depth_filler = 3,
    node_riverbed = 'everness:crystal_sand',
    depth_riverbed = 2,
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    vertical_blend = 1,
    y_max = 5,
    y_min = 1,
    heat_point = 35,
    humidity_point = 50,
})

minetest.register_biome({
    name = 'everness_crystal_forest_shore',
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
    y_max = 0,
    y_min = -1,
    heat_point = 35,
    humidity_point = 50,
})

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
    y_max = -2,
    y_min = -255,
    heat_point = 35,
    humidity_point = 50,
})

minetest.register_biome({
    name = 'everness_crystal_forest_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = -256,
    y_min = -31000,
    heat_point = 35,
    humidity_point = 50,
})

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
    y_max = 31000,
    y_min = 1,
    heat_point = 80,
    humidity_point = 60,
})

minetest.register_biome({
    name = 'everness_bamboo_forest_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = -256,
    y_min = -31000,
    heat_point = 80,
    humidity_point = 60,
})

-- Forsaken Desert

minetest.register_biome({
    name = 'everness_forsaken_desert',
    node_top = 'everness:forsaken_desert_sand',
    depth_top = 1,
    node_stone = 'everness:forsaken_desert_stone',
    node_filler = 'everness:forsaken_desert_sand',
    depth_filler = 1,
    node_riverbed = 'everness:forsaken_desert_sand',
    depth_riverbed = 2,
    node_dungeon = 'everness:forsaken_desert_brick',
    node_dungeon_alt = 'everness:forsaken_desert_brick_red',
    node_dungeon_stair = 'stairs:stair_forsaken_desert_brick',
    y_max = 31000,
    y_min = 4,
    heat_point = 100,
    humidity_point = 30,
})

minetest.register_biome({
    name = 'everness_forsaken_desert_ocean',
    node_top = 'everness:dry_ocean_dirt',
    depth_top = 1,
    node_stone = 'everness:forsaken_desert_stone',
    node_filler = 'everness:dry_ocean_dirt',
    depth_filler = 3,
    node_water_top = 'everness:dry_ocean_dirt',
    depth_water_top = 10,
    node_river_water = 'everness:dry_ocean_dirt',
    node_riverbed = 'everness:dry_ocean_dirt',
    depth_riverbed = 2,
    node_dungeon = 'everness:forsaken_desert_brick',
    node_dungeon_alt = 'everness:forsaken_desert_brick_red',
    node_dungeon_stair = 'stairs:stair_forsaken_desert_brick',
    y_max = 3,
    y_min = -8,
    heat_point = 100,
    humidity_point = 30,
})

minetest.register_biome({
    name = 'everness_forsaken_desert_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = -256,
    y_min = -31000,
    heat_point = 100,
    humidity_point = 30,
})

-- Baobab Savanna

minetest.register_biome({
    name = 'everness_baobab_savanna',
    node_top = 'default:dry_dirt_with_dry_grass',
    depth_top = 1,
    node_filler = 'default:dry_dirt',
    depth_filler = 1,
    node_riverbed = 'default:sand',
    depth_riverbed = 2,
    node_dungeon = 'default:cobble',
    node_dungeon_alt = 'default:mossycobble',
    node_dungeon_stair = 'stairs:stair_cobble',
    y_max = 31000,
    y_min = 1,
    heat_point = 80,
    humidity_point = 30,
})

-- Forsaken Tundra

minetest.register_biome({
    name = 'everness_forsaken_tundra',
    node_top = 'everness:forsaken_tundra_dirt',
    depth_top = 1,
    node_stone = 'everness:forsaken_tundra_stone',
    node_filler = 'everness:forsaken_tundra_dirt',
    depth_filler = 1,
    node_riverbed = 'everness:forsaken_tundra_beach_sand',
    depth_riverbed = 2,
    node_dungeon = 'everness:forsaken_tundra_cobble',
    node_dungeon_alt = 'everness:forsaken_tundra_brick',
    node_dungeon_stair = 'stairs:stair_forsaken_tundra_cobble',
    y_max = 31000,
    y_min = 2,
    heat_point = 10,
    humidity_point = 10,
})

minetest.register_biome({
    name = 'everness_forsaken_tundra_beach',
    node_top = 'everness:forsaken_tundra_beach_sand',
    depth_top = 1,
    node_filler = 'everness:forsaken_tundra_beach_sand',
    depth_filler = 2,
    node_riverbed = 'everness:forsaken_tundra_beach_sand',
    depth_riverbed = 2,
    node_dungeon = 'everness:forsaken_tundra_cobble',
    node_dungeon_alt = 'everness:forsaken_tundra_brick',
    node_dungeon_stair = 'stairs:stair_forsaken_tundra_cobble',
    vertical_blend = 1,
    y_max = 1,
    y_min = -3,
    heat_point = 10,
    humidity_point = 10,
})

minetest.register_biome({
    name = 'everness_forsaken_tundra_ocean',
    node_top = 'everness:forsaken_tundra_beach_sand',
    depth_top = 1,
    node_stone = 'everness:forsaken_tundra_stone',
    node_filler = 'everness:forsaken_tundra_beach_sand',
    depth_filler = 3,
    node_riverbed = 'everness:forsaken_tundra_beach_sand',
    depth_riverbed = 2,
    node_cave_liquid = 'default:water_source',
    node_dungeon = 'everness:forsaken_tundra_cobble',
    node_dungeon_alt = 'everness:forsaken_tundra_brick',
    node_dungeon_stair = 'stairs:stair_forsaken_tundra_cobble',
    vertical_blend = 1,
    y_max = -4,
    y_min = -255,
    heat_point = 10,
    humidity_point = 10,
})

minetest.register_biome({
    name = 'everness_forsaken_tundra_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'everness:forsaken_tundra_cobble',
    node_dungeon_alt = 'everness:forsaken_tundra_brick',
    node_dungeon_stair = 'stairs:stair_forsaken_tundra_cobble',
    y_max = -256,
    y_min = -31000,
    heat_point = 10,
    humidity_point = 10,
})

--
-- Register ores
--

-- Stratum ores.
-- These obviously first.

-- Forsaken Desert sandstone

minetest.register_ore({
    ore_type = 'stratum',
    ore = 'everness:forsaken_desert_cobble',
    wherein = { 'everness:forsaken_desert_stone' },
    clust_scarcity = 1,
    y_max = 46,
    y_min = 10,
    noise_params = {
        offset = 28,
        scale = 16,
        spread = { x = 128, y = 128, z = 128 },
        seed = 90122,
        octaves = 1,
    },
    stratum_thickness = 4,
    biomes = { 'everness_forsaken_desert' },
})

minetest.register_ore({
    ore_type = 'stratum',
    ore = 'everness:forsaken_desert_cobble',
    wherein = { 'everness:forsaken_desert_stone' },
    clust_scarcity = 1,
    y_max = 42,
    y_min = 6,
    noise_params = {
        offset = 24,
        scale = 16,
        spread = { x = 128, y = 128, z = 128 },
        seed = 90122,
        octaves = 1,
    },
    stratum_thickness = 2,
    biomes = { 'everness_forsaken_desert' },
})

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

-- Coral Desert Stone

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:coral_desert_stone',
    wherein = { 'default:stone' },
    clust_scarcity = 16 * 16 * 16,
    clust_size = 5,
    y_max = 31000,
    y_min = -31000,
    noise_threshold = 0.0,
    noise_params = {
        offset = 0.5,
        scale = 0.2,
        spread = { x = 5, y = 5, z = 5 },
        seed = -316,
        octaves = 1,
        persist = 0.0
    },
    biomes = { 'everness_coral_forest' }
})

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:bone',
    wherein = { 'default:stone' },
    clust_scarcity = 16 * 16 * 16,
    clust_size = 5,
    y_max = -250,
    y_min = -31000,
    noise_threshold = 0.0,
    noise_params = {
        offset = 0.5,
        scale = 0.2,
        spread = { x = 5, y = 5, z = 5 },
        seed = -316,
        octaves = 1,
        persist = 0.0
    },
    biomes = { 'everness_frosted_icesheet_under' }
})

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:sulfur_stone',
    wherein = { 'default:stone', 'everness:forsaken_tundra_stone' },
    clust_scarcity = 16 * 16 * 16,
    clust_size = 5,
    y_max = 31000,
    y_min = -31000,
    noise_threshold = 0.0,
    noise_params = {
        offset = 0.5,
        scale = 0.2,
        spread = { x = 5, y = 5, z = 5 },
        seed = -316,
        octaves = 1,
        persist = 0.0
    },
    biomes = {
        'everness_forsaken_tundra',
        'everness_forsaken_tundra_beach',
        'everness_forsaken_tundra_ocean',
        'everness_forsaken_tundra_under',
    }
})

-- Scatter ores

-- Pyrite

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:stone_with_pyrite',
    wherein = 'default:stone',
    clust_scarcity = 13 * 13 * 13,
    clust_num_ores = 5,
    clust_size = 3,
    y_max = 31000,
    y_min = 1025,
})

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:stone_with_pyrite',
    wherein = 'default:stone',
    clust_scarcity = 15 * 15 * 15,
    clust_num_ores = 3,
    clust_size = 2,
    y_max = -256,
    y_min = -511,
})

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:stone_with_pyrite',
    wherein = 'default:stone',
    clust_scarcity = 13 * 13 * 13,
    clust_num_ores = 5,
    clust_size = 3,
    y_max = -512,
    y_min = -31000,
})

-- Quartz

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:quartz_ore',
    wherein = { 'default:stone' },
    clust_scarcity = 10 * 10 * 10,
    clust_num_ores = 6,
    clust_size = 5,
    y_max = -5,
    y_min = -31000,
})

--
-- Register decorations
--

-- Coral Forest

local chunksize = tonumber(minetest.get_mapgen_setting('chunksize'))

if chunksize >= 5 then
    minetest.register_decoration({
        name = 'everness:coral_tree',
        deco_type = 'schematic',
        place_on = { 'everness:dirt_with_coral_grass' },
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
        biomes = { 'everness_coral_forest' },
        y_max = 31000,
        y_min = 0,
        schematic = minetest.get_modpath('everness') .. '/schematics/everness_coral_tree.mts',
        flags = 'place_center_x, place_center_z',
        rotation = 'random',
        spawn_by = 'everness:dirt_with_coral_grass',
        num_spawn_by = 8,
    })
end

minetest.register_decoration({
    name = 'everness:coral_bones_tree',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_coral_grass' },
    sidelen = 16,
    place_offset_y = -1,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_coral_forest' },
    y_max = 31000,
    y_min = 2,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_coral_bones_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:coral_volcano',
    deco_type = 'schematic',
    place_on = { 'everness:coral_sand' },
    place_offset_y = -1,
    sidelen = 16,
    noise_params = {
        offset = -0.012,
        scale = 0.024,
        spread = { x = 100, y = 100, z = 100 },
        seed = 230,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_coral_forest_dunes' },
    y_max = 30,
    y_min = 0,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_coral_volcano.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
    spawn_by = 'everness:coral_sand',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:coral_burdock',
    deco_type = 'simple',
    place_on = { 'everness:dirt_with_coral_grass' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.006,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_coral_forest' },
    y_max = 31000,
    y_min = 0,
    decoration = { 'everness:coral_burdock_1', 'everness:coral_burdock_2' },
    spawn_by = 'everness:coral_tree'
})

minetest.register_decoration({
    name = 'everness:coral_bush',
    deco_type = 'simple',
    place_on = { 'everness:dirt_with_coral_grass', 'everness:coral_sand', 'everness:coral_white_sand' },
    sidelen = 16,
    noise_params = {
        offset = -0.02,
        scale = 0.04,
        spread = { x = 200, y = 200, z = 200 },
        seed = 436,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_coral_forest', 'everness_coral_forest_dunes' },
    y_max = 31000,
    y_min = 0,
    decoration = 'everness:coral_bush'
})

minetest.register_decoration({
    name = 'everness:coral_shrub',
    deco_type = 'simple',
    place_on = { 'everness:dirt_with_coral_grass', 'everness:coral_sand', 'everness:coral_white_sand' },
    sidelen = 16,
    noise_params = {
        offset = -0.02,
        scale = 0.04,
        spread = { x = 200, y = 200, z = 200 },
        seed = 1220999,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_coral_forest', 'everness_coral_forest_dunes' },
    y_max = 31000,
    y_min = 0,
    decoration = 'everness:coral_shrub'
})

local function register_coral_grass_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:coral_grass_' .. length,
        deco_type = 'simple',
        place_on = { 'everness:dirt_with_coral_grass' },
        sidelen = 16,
        noise_params = {
            offset = offset,
            scale = scale,
            spread = { x = 200, y = 200, z = 200 },
            seed = 329,
            octaves = 3,
            persist = 0.6
        },
        biomes = { 'everness_coral_forest' },
        y_max = 31000,
        y_min = 0,
        decoration = 'everness:coral_grass_' .. length,
    })
end

-- Grasses

register_coral_grass_decoration(-0.03, 0.09, 5)
register_coral_grass_decoration(-0.015, 0.075, 4)
register_coral_grass_decoration(0, 0.06, 3)
register_coral_grass_decoration(0.015, 0.045, 2)
register_coral_grass_decoration(0.03, 0.03, 1)

-- Coral reef

minetest.register_decoration({
    name = 'everness:coral_forest_corals',
    deco_type = 'simple',
    place_on = { 'everness:coral_white_sand' },
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
    biomes = { 'everness_coral_forest_ocean' },
    y_max = -2,
    y_min = -8,
    flags = 'force_placement',
    decoration = { 'everness:coral_corals', 'everness:coral_jellyfish' },
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_desert_stone_with_moss_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 10,
    biomes = { 'everness_coral_forest_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_floors, force_placement',
    decoration = {
        'everness:coral_desert_stone_with_moss'
    },
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_mold_stone_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = { 'everness_coral_forest_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    decoration = {
        'everness:moss_block'
    },
})

minetest.register_decoration({
    name = 'everness:coral_tree_bioluminescent',
    deco_type = 'schematic',
    place_on = { 'everness:coral_desert_stone_with_moss' },
    place_offset_y = 1,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_coral_forest_under' },
    y_max = -2025,
    y_min = -31000,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_coral_tree_bioluminescent.mts',
    flags = 'place_center_x, place_center_z, all_floors, force_placement',
    rotation = 'random',
    spawn_by = 'everness:coral_desert_stone_with_moss',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:coral_plant_bioluminescent',
    deco_type = 'simple',
    place_on = { 'everness:coral_desert_stone_with_moss' },
    param2 = 8,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_coral_forest_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = 'everness:coral_plant_bioluminescent',
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_lumecorn',
    deco_type = 'simple',
    place_on = { 'everness:coral_desert_stone_with_moss' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_coral_forest_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = 'everness:lumecorn',
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_vines',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = { 'everness_coral_forest_under' },
    param2 = 8,
    decoration = {
        'everness:lumabus_vine_1',
        'everness:lumabus_vine_2',
        'everness:flowered_vine_1',
        'everness:flowered_vine_2'
    },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:coral_forest_under_plants',
    deco_type = 'simple',
    place_on = { 'everness:coral_desert_stone_with_moss' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_coral_forest_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = {
        'everness:coral_grass_orange',
        'everness:globulagus',
        'everness:coral_grass_tall',
    },
    flags = 'all_floors',
})

-- Frosted Lands

minetest.register_decoration({
    name = 'everness:frosted_lands_stalagmite',
    deco_type = 'schematic',
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_frosted_lands_stalagmite.mts',
    place_on = { 'everness:frosted_snowblock' },
    place_offset_y = 1,
    sidelen = 16,
    noise_params = {
        offset = 0.0008,
        scale = 0.0007,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_frosted_icesheet' },
    y_max = 31000,
    y_min = 4,
    flags = 'place_center_x, place_center_z',
    spawn_by = 'everness:frosted_snowblock',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:frosted_lands_volcanic_rock',
    deco_type = 'schematic',
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_frosted_lands_volcanic_rock.mts',
    place_on = { 'everness:frosted_snowblock' },
    sidelen = 16,
    noise_params = {
        offset = 0.0008,
        scale = 0.0007,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_frosted_icesheet' },
    y_max = 31000,
    y_min = 2,
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
    spawn_by = 'everness:frosted_snowblock',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:frosted_lands_fossils',
    deco_type = 'schematic',
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_frosted_lands_fossils.mts',
    place_on = { 'everness:frosted_snowblock' },
    sidelen = 16,
    place_offset_y = 1,
    noise_params = {
        offset = 0.0008,
        scale = 0.0007,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_frosted_icesheet' },
    y_max = 31000,
    y_min = 1,
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
    spawn_by = 'everness:frosted_snowblock',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_ocean_corals',
    deco_type = 'simple',
    place_on = { 'default:sand' },
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
    biomes = { 'everness_frosted_icesheet_ocean' },
    y_max = -2,
    y_min = -50,
    flags = 'force_placement',
    decoration = { 'everness:coral_starfish', 'everness:coral_frosted' },
})

minetest.register_decoration({
    name = 'everness:frosted_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 10,
    biomes = { 'everness_frosted_icesheet_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_floors, force_placement',
    decoration = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_cave_ice_illuminating',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
})

minetest.register_decoration({
    name = 'everness:frosted_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = { 'everness_frosted_icesheet_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    decoration = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_cave_ice_illuminating',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
})

minetest.register_decoration({
    name = 'everness:amaranita_lantern',
    deco_type = 'simple',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_cave_ice_illuminating',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_frosted_icesheet_under' },
    y_max = -256,
    y_min = -31000,
    decoration = { 'everness:amaranita_lantern' },
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:frosted_under_vines',
    deco_type = 'simple',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_cave_ice_illuminating',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = { 'everness_frosted_icesheet_under' },
    param2 = 8,
    decoration = {
        'everness:tenanea_flowers_vine_1',
        'everness:tenanea_flowers_vine_2',
        'everness:reeds_vine_1',
        'everness:reeds_vine_2'
    },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:frosted_under_plants',
    deco_type = 'simple',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_cave_ice_illuminating',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    param2 = 11,
    biomes = { 'everness_frosted_icesheet_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = {
        'everness:blooming_cooksonia',
        'everness:creeping_moss_spores',
        'everness:frosted_icicle_floor',
    },
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:frosted_crystal',
    deco_type = 'schematic',
    place_on = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_cave_ice_illuminating',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    place_offset_y = 1,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_frosted_icesheet_under' },
    y_max = -3025,
    y_min = -31000,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_frosted_crystal.mts',
    flags = 'place_center_x, place_center_z, all_floors, force_placement',
    rotation = 'random',
    spawn_by = {
        'everness:ancient_emerald_ice',
        'everness:dense_emerald_ice',
        'everness:emerald_ice',
        'everness:frosted_cave_ice_illuminating',
        'everness:frosted_ice',
        'everness:frosted_ice_translucent',
    },
    num_spawn_by = 8,
})

-- Cursed Lands

minetest.register_decoration({
    name = 'everness:cemetery',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_cursed_grass' },
    sidelen = 8,
    noise_params = {
        offset = -0.0003,
        scale = 0.0009,
        spread = { x = 200, y = 200, z = 200 },
        seed = 230,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_cursed_lands' },
    y_max = 31000,
    y_min = 4,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_cemetery.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:ruins_1',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_cursed_grass' },
    sidelen = 8,
    noise_params = {
        offset = -0.0003,
        scale = 0.0009,
        spread = { x = 200, y = 200, z = 200 },
        seed = 230,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_cursed_lands' },
    y_max = 31000,
    y_min = 4,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_ruins_1.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

local function register_red_castor_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:red_castor_' .. length,
        deco_type = 'simple',
        place_on = { 'everness:dirt_with_cursed_grass' },
        sidelen = 16,
        noise_params = {
            offset = offset,
            scale = scale,
            spread = { x = 200, y = 200, z = 200 },
            seed = 329,
            octaves = 3,
            persist = 0.6
        },
        biomes = { 'everness_cursed_lands' },
        y_max = 31000,
        y_min = 1,
        decoration = 'everness:red_castor_' .. length,
    })
end

-- Red Castor Grasses

register_red_castor_decoration(-0.03, 0.09, 4)
register_red_castor_decoration(-0.015, 0.075, 3)
register_red_castor_decoration(0, 0.06, 2)
register_red_castor_decoration(0.015, 0.045, 1)

minetest.register_decoration({
    name = 'everness:cursed_mud',
    deco_type = 'simple',
    place_on = { 'everness:dirt_with_cursed_grass', 'everness:cursed_dirt', 'everness:cursed_sand' },
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
    biomes = { 'everness_cursed_lands' },
    y_max = 31000,
    y_min = 1,
    flags = 'force_placement',
    decoration = { 'everness:cursed_mud' },
})

minetest.register_decoration({
    name = 'everness:dry_tree',
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
    biomes = { 'everness_cursed_lands', 'everness_cursed_lands_dunes', 'everness_cursed_lands_ocean' },
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_dry_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:dry_tree_swamp',
    deco_type = 'schematic',
    place_on = { 'everness:cursed_stone' },
    place_offset_y = 0,
    sidelen = 16,
    -- Noise tuned to place swamp trees where papyrus is absent
    noise_params = {
        offset = 0.0,
        scale = -0.1,
        spread = { x = 200, y = 200, z = 200 },
        seed = 354,
        octaves = 1,
        persist = 0.5
    },
    biomes = { 'everness_cursed_lands_swamp' },
    y_max = -1,
    y_min = -1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_dry_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:marsh_grass_swamp',
    deco_type = 'schematic',
    place_on = { 'everness:cursed_stone' },
    place_offset_y = 1,
    sidelen = 16,
    -- Noise tuned to place where papyrus is absent
    noise_params = {
        offset = 0.0,
        scale = -0.1,
        spread = { x = 200, y = 200, z = 200 },
        seed = 354,
        octaves = 1,
        persist = 0.5
    },
    biomes = { 'everness_cursed_lands_swamp' },
    y_max = 0,
    y_min = 0,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_marsh_grass.mts',
})

minetest.register_decoration({
    name = 'everness:cursed_bush',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_cursed_grass' },
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
    biomes = { 'everness_cursed_lands' },
    y_max = 31000,
    y_min = 2,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_cursed_bush.mts',
    flags = 'place_center_x, place_center_z',
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_soul_sandstone_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 10,
    biomes = { 'everness_cursed_lands_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_floors, force_placement',
    decoration = {
        'everness:soul_sandstone_veined'
    },
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_mold_stone_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = { 'everness_cursed_lands_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    decoration = {
        'everness:moss_block'
    },
})

minetest.register_decoration({
    name = 'everness:skull_with_candle',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_cursed_lands_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = 'everness:skull_with_candle',
    flags = 'all_floors',
    param2_max = 3
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_vines',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = { 'everness_cursed_lands_under' },
    param2 = 8,
    decoration = {
        'everness:eye_vine_1',
        'everness:eye_vine_2',
        'everness:ivis_vine_1',
        'everness:ivis_vine_2'
    },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:cursed_pumpkin_lantern',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_cursed_lands_under' },
    y_max = -256,
    y_min = -31000,
    decoration = { 'everness:cursed_pumpkin_lantern' },
    flags = 'all_floors',
    param2_max = 3
})

minetest.register_decoration({
    name = 'everness:everness_cursed_dream_tree',
    deco_type = 'schematic',
    place_on = { 'everness:soul_sandstone_veined' },
    place_offset_y = 1,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_cursed_lands_under' },
    y_max = -2025,
    y_min = -31000,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_cursed_dream_tree.mts',
    flags = 'place_center_x, place_center_z, all_floors, force_placement',
    rotation = 'random',
    spawn_by = 'everness:soul_sandstone_veined',
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_plants',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_cursed_lands_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = {
        'everness:egg_plant',
        'everness:ngrass_2',
    },
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_ivis_moss',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_cursed_lands_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = {
        'everness:ivis_moss',
    },
    flags = 'all_floors',
    param2 = 3
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_ngrass_1',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_cursed_lands_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = {
        'everness:ngrass_1',
    },
    flags = 'all_floors',
    param2 = 2
})

minetest.register_decoration({
    name = 'everness:cursed_lands_under_cobweb_floors',
    deco_type = 'simple',
    place_on = { 'everness:soul_sandstone_veined' },
    sidelen = 16,
    fill_ratio = 0.02,
    biomes = { 'everness_cursed_lands_under' },
    y_max = -256,
    y_min = -31000,
    decoration = { 'everness:cobweb' },
    flags = 'all_floors'
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
    y_max = -5,
    y_min = -10,
    flags = 'force_placement',
    decoration = 'everness:sand_with_spine_kelp',
    param2 = 48,
    param2_max = 96,
})

-- Crystal Forest

minetest.register_decoration({
    name = 'everness:crystal_mushrooms',
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
    y_max = 31000,
    y_min = 1,
    decoration = 'everness:crystal_mushrooms',
})

minetest.register_decoration({
    name = 'everness:crystal_tree',
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
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:crystal_tree_large',
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
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_tree_large.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:crystal_forest_ruins_1',
    deco_type = 'schematic',
    place_on = { 'everness:crystal_sand' },
    sidelen = 16,
    noise_params = {
        offset = -0.0003,
        scale = 0.0009,
        spread = { x = 200, y = 200, z = 200 },
        seed = 230,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_crystal_forest_dunes' },
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_forest_ruins_1.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:crystal_forest_under_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 10,
    biomes = { 'everness_crystal_forest_under' },
    y_max = -256,
    y_min = -31000,
    decoration = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    flags = 'all_floors, force_placement'
})

minetest.register_decoration({
    name = 'everness:crystal_forest_under_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = { 'everness_crystal_forest_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    decoration = {
        'everness:crystal_moss_block'
    },
})

minetest.register_decoration({
    name = 'everness:crystal_forest_under_vines',
    deco_type = 'simple',
    place_on = { 'everness:crystal_moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = { 'everness_crystal_forest_under' },
    param2 = 8,
    decoration = {
        'everness:twisted_vine_1',
        'everness:twisted_vine_2',
        'everness:golden_vine_1',
        'everness:golden_vine_2'
    },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:crystal_purple_cluster',
    deco_type = 'schematic',
    place_on = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    place_offset_y = -7,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_crystal_forest_under' },
    y_max = -3025,
    y_min = -31000,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_purple_cluster.mts',
    flags = 'place_center_x, place_center_z, all_floors, force_placement',
    rotation = 'random',
    spawn_by = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:crystal_orange_cluster',
    deco_type = 'schematic',
    place_on = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    sidelen = 16,
    place_offset_y = 1,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_crystal_forest_under' },
    y_max = -2025,
    y_min = -31000,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_orange_cluster.mts',
    flags = 'place_center_x, place_center_z, all_floors',
    rotation = 'random',
    spawn_by = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:crystal_cyan',
    deco_type = 'simple',
    place_on = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_crystal_forest_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = 'everness:crystal_cyan',
    flags = 'all_floors',
    param2 = 1
})

minetest.register_decoration({
    name = 'everness:twisted_crystal_grass',
    deco_type = 'simple',
    place_on = {
        'everness:crystal_cave_dirt_with_moss',
        'everness:crystal_moss_block'
    },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.2,
        spread = { x = 100, y = 100, z = 100 },
        seed = 801,
        octaves = 3,
        persist = 0.7
    },
    biomes = { 'everness_crystal_forest_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = 'everness:twisted_crystal_grass',
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:crystal_cyan_ceiling',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_crystal_forest_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = 'everness:crystal_cyan',
    flags = 'all_ceilings',
})

minetest.register_decoration({
    name = 'everness:crystal_forest_ruins_2',
    deco_type = 'schematic',
    place_on = { 'everness:crystal_sand' },
    place_offset_y = 0,
    sidelen = 16,
    noise_params = {
        offset = -0.0003,
        scale = 0.0009,
        spread = { x = 200, y = 200, z = 200 },
        seed = 230,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_crystal_forest_dunes' },
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_forest_ruins_2.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:crystal_waterlily',
    deco_type = 'simple',
    place_on = { 'everness:crystal_sand' },
    sidelen = 16,
    noise_params = {
        offset = -0.12,
        scale = 0.3,
        spread = { x = 200, y = 200, z = 200 },
        seed = 33,
        octaves = 3,
        persist = 0.7
    },
    biomes = { 'everness_crystal_forest_shore' },
    y_max = 0,
    y_min = 0,
    decoration = 'everness:crystal_waterlily',
    param2 = 0,
    param2_max = 3,
    place_offset_y = 1,
})

local function register_crystal_grass_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:crystal_grass_' .. length,
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
        y_max = 31000,
        y_min = 1,
        decoration = 'everness:crystal_grass_' .. length,
    })
end

-- Crystal Grasses

register_crystal_grass_decoration(-0.03, 0.09, 3)
register_crystal_grass_decoration(-0.015, 0.075, 2)
register_crystal_grass_decoration(0, 0.06, 1)

minetest.register_decoration({
    name = 'everness:crystal_bush',
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
    y_max = 31000,
    y_min = 2,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_crystal_bush.mts',
    flags = 'place_center_x, place_center_z',
})

-- Coral reef

minetest.register_decoration({
    name = 'everness:crystal_corals',
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
    y_max = -2,
    y_min = -8,
    flags = 'force_placement',
    decoration = {
        'everness:crystal_coral_dark',
        'everness:crystal_coral_light'
    },
})

-- Bamboo forest

minetest.register_decoration({
    name = 'everness:everness_small_bamboo_forest',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_grass_1' },
    sidelen = 80,
    fill_ratio = 0.1,
    biomes = { 'everness_bamboo_forest' },
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_small_bamboo.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:everness_large_bamboo_forest',
    deco_type = 'schematic',
    place_on = { 'everness:dirt_with_grass_1' },
    sidelen = 80,
    fill_ratio = 0.1,
    biomes = { 'everness_bamboo_forest' },
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_large_bamboo.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:everness_bamboo_forest_under_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 10,
    biomes = { 'everness_bamboo_forest_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_floors',
    decoration = {
        'everness:moss_block',
        'default:clay'
    },
})

minetest.register_decoration({
    name = 'everness:forsythia_bush_under',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_bamboo_forest_under' },
    y_max = -1025,
    y_min = -31000,
    flags = 'all_floors',
    decoration = { 'everness:forsythia_bush' },
})

minetest.register_decoration({
    name = 'everness:everness_bamboo_forest_under_ceiling',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = { 'everness_bamboo_forest_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    decoration = { 'everness:moss_block' },
})

minetest.register_decoration({
    name = 'everness:everness_cave_vine_ceiling',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    decoration = {
        'everness:vine_cave',
        'everness:vine_cave_with_mese_leaves'
    },
    biomes = { 'everness_bamboo_forest_under' },
    y_max = -525,
    y_min = -31000,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:bamboo_flowers_under',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    param2 = 8,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_bamboo_forest_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = { 'everness:cave_flower' },
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:bamboo_flowers_with_particles_under',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    param2 = 8,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_bamboo_forest_under' },
    y_max = -2025,
    y_min = -31000,
    decoration = { 'everness:cave_flower_with_particles' },
    flags = 'all_floors'
})

-- Jungle tree and log

minetest.register_decoration({
    name = 'everness:jungle_tree',
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
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('default') .. '/schematics/jungle_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:jungle_log',
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
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('default') .. '/schematics/jungle_log.mts',
    flags = 'place_center_x',
    rotation = 'random',
    spawn_by = 'everness:dirt_with_grass_1',
    num_spawn_by = 8,
})

local function register_grass_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:grass_' .. length,
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
        y_max = 31000,
        y_min = 1,
        decoration = 'default:grass_' .. length,
    })
end

local function register_flower(seed, flower_name)
    minetest.register_decoration({
        name = 'everness:' .. flower_name,
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
        y_max = 31000,
        y_min = 1,
        decoration = 'flowers:' .. flower_name,
    })
end

-- Bush

minetest.register_decoration({
    name = 'everness:bush',
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
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('default') .. '/schematics/bush.mts',
    flags = 'place_center_x, place_center_z',
})

-- Blueberry bush

minetest.register_decoration({
    name = 'everness:blueberry_bush',
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
    y_max = 31000,
    y_min = 1,
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

-- Forsaken Desert

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 10,
    biomes = { 'everness_forsaken_desert_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_floors, force_placement',
    decoration = {
        'everness:forsaken_desert_sand'
    },
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_floors_chiseled',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 0.2,
    biomes = { 'everness_forsaken_desert_under' },
    y_max = -256,
    y_min = -31000,
    decoration = {
        'everness:forsaken_desert_chiseled_stone',
        'everness:forsaken_desert_brick',
        'everness:forsaken_desert_brick_red',
        'everness:forsaken_desert_engraved_stone',
        'everness:forsaken_desert_cobble_red',
        'everness:forsaken_desert_cobble',
    },
    flags = 'all_floors, force_placement'
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_ceilings',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = { 'everness_forsaken_desert_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    decoration = {
        'everness:moss_block'
    },
})

minetest.register_decoration({
    name = 'everness:cactus_blue',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_desert_under' },
    y_max = -256,
    y_min = -31000,
    decoration = 'everness:cactus_blue',
    height = 2,
    height_max = 6,
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_cave_barrel_cactus',
    deco_type = 'simple',
    place_on = {
        'everness:forsaken_desert_sand',
        'everness:forsaken_desert_chiseled_stone',
        'everness:forsaken_desert_brick',
        'everness:forsaken_desert_engraved_stone'
    },
    sidelen = 16,
    fill_ratio = 0.005,
    biomes = { 'everness_forsaken_desert_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = {
        'everness:cave_barrel_cactus',
        'everness:venus_trap'
    },
    flags = 'all_floors',
    param2_max = 3
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_cave_illumi_root',
    deco_type = 'simple',
    place_on = {
        'everness:forsaken_desert_sand',
        'everness:forsaken_desert_chiseled_stone',
        'everness:forsaken_desert_brick',
        'everness:forsaken_desert_engraved_stone'
    },
    sidelen = 16,
    fill_ratio = 0.005,
    biomes = { 'everness_forsaken_desert_under' },
    y_max = -1025,
    y_min = -31000,
    decoration = { 'everness:illumi_root' },
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_vines',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = { 'everness_forsaken_desert_under' },
    param2 = 8,
    decoration = {
        'everness:dense_vine_1',
        'everness:dense_vine_2'
    },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_under_hollow_tree',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.006,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_forsaken_desert_under' },
    y_max = -256,
    y_min = -31000,
    decoration = 'everness:hollow_tree',
    height = 3,
    height_max = 7,
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_sand_plants_1',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_forsaken_desert' },
    y_max = 31000,
    y_min = 2,
    decoration = { 'everness:forsaken_desert_plant_1' },
    param2 = 11,
})

minetest.register_decoration({
    name = 'everness:forsaken_desert_sand_plants_2',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_forsaken_desert' },
    y_max = 31000,
    y_min = 2,
    decoration = {
        'everness:forsaken_desert_plant_2',
        'everness:forsaken_desert_plant_3'
    },
    param2 = 8,
})

minetest.register_decoration({
    name = 'everness:termite_nest',
    deco_type = 'schematic',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_desert' },
    y_max = 31000,
    y_min = 4,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_termite_nest.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:hollow_tree',
    deco_type = 'schematic',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_forsaken_desert' },
    y_max = 31000,
    y_min = 4,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_hollow_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:hollow_tree_large',
    deco_type = 'schematic',
    place_on = { 'everness:forsaken_desert_sand' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.001,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_forsaken_desert' },
    y_max = 31000,
    y_min = 4,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_hollow_tree_large.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

-- Baobab Savanna

-- Savanna bare dirt patches.
-- Must come before all savanna decorations that are placed on dry grass.
-- Noise is similar to long dry grass noise, but scale inverted, to appear
-- where long dry grass is least dense and shortest.

minetest.register_decoration({
    deco_type = 'simple',
    place_on = { 'default:dry_dirt_with_dry_grass' },
    sidelen = 4,
    noise_params = {
        offset = -1.5,
        scale = -1.5,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 4,
        persist = 1.0
    },
    biomes = { 'everness_baobab_savanna' },
    y_max = 31000,
    y_min = 1,
    decoration = 'default:dry_dirt',
    place_offset_y = -1,
    flags = 'force_placement',
})

minetest.register_decoration({
    name = 'everness:baobab_tree_1',
    deco_type = 'schematic',
    place_on = { 'default:dry_dirt_with_dry_grass', 'default:dry_dirt' },
    spawn_by = { 'default:dry_dirt_with_dry_grass', 'default:dry_dirt' },
    num_spawn_by = 8,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_baobab_savanna' },
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_baobab_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:baobab_tree_2',
    deco_type = 'schematic',
    place_on = { 'default:dry_dirt_with_dry_grass', 'default:dry_dirt' },
    spawn_by = { 'default:dry_dirt_with_dry_grass', 'default:dry_dirt' },
    num_spawn_by = 8,
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 90155,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_baobab_savanna' },
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_baobab_tree.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'default:everness_acacia_log',
    deco_type = 'schematic',
    place_on = { 'default:dry_dirt_with_dry_grass' },
    place_offset_y = 1,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.001,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_baobab_savanna' },
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('default') .. '/schematics/acacia_log.mts',
    flags = 'place_center_x',
    rotation = 'random',
    spawn_by = 'default:dry_dirt_with_dry_grass',
    num_spawn_by = 8,
})

local function register_dry_grass_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'default:everness_dry_grass_' .. length,
        deco_type = 'simple',
        place_on = { 'default:dry_dirt_with_dry_grass' },
        sidelen = 16,
        noise_params = {
            offset = offset,
            scale = scale,
            spread = { x = 200, y = 200, z = 200 },
            seed = 329,
            octaves = 3,
            persist = 0.6
        },
        biomes = { 'everness_baobab_savanna' },
        y_max = 31000,
        y_min = 1,
        decoration = 'default:dry_grass_' .. length,
    })
end

-- Dry grasses

register_dry_grass_decoration(0.01, 0.05, 5)
register_dry_grass_decoration(0.03, 0.03, 4)
register_dry_grass_decoration(0.05, 0.01, 3)
register_dry_grass_decoration(0.07, -0.01, 2)
register_dry_grass_decoration(0.09, -0.03, 1)

-- Forsaken Tundra

minetest.register_decoration({
    name = 'everness:forsaken_tundra_volcanic_sulfur',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_tundra_dirt' },
    sidelen = 4,
    noise_params = {
        offset = -0.7,
        scale = 4.0,
        spread = { x = 16, y = 16, z = 16 },
        seed = 513337,
        octaves = 1,
        persist = 0.0,
        flags = 'absvalue, eased'
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = 31000,
    y_min = 2,
    decoration = { 'everness:volcanic_sulfur' },
    place_offset_y = -1,
    flags = 'force_placement',
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_sulfur_stone',
    deco_type = 'simple',
    place_on = {
        'everness:forsaken_tundra_dirt',
        'everness:volcanic_sulfur'
    },
    sidelen = 4,
    noise_params = {
        offset = -4,
        scale = 4,
        spread = { x = 50, y = 50, z = 50 },
        seed = 7013,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = 31000,
    y_min = 2,
    place_offset_y = -1,
    flags = 'force_placement',
    decoration = { 'everness:sulfur_stone' },
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_volcanic_sulfur_on_top_of_sulfur_stone',
    deco_type = 'simple',
    place_on = { 'everness:sulfur_stone' },
    sidelen = 4,
    noise_params = {
        offset = -4,
        scale = 4,
        spread = { x = 50, y = 50, z = 50 },
        seed = 7013,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = 31000,
    y_min = 2,
    decoration = { 'everness:volcanic_sulfur' },
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_dirt_with_grass',
    deco_type = 'simple',
    place_on = {
        'everness:forsaken_tundra_dirt',
        'everness:volcanic_sulfur'
    },
    sidelen = 4,
    noise_params = {
        offset = -0.8,
        scale = 2.0,
        spread = { x = 100, y = 100, z = 100 },
        seed = 53995,
        octaves = 3,
        persist = 1.0
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = 31000,
    y_min = 2,
    decoration = 'everness:forsaken_tundra_dirt_with_grass',
    place_offset_y = -1,
    flags = 'force_placement',
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_bloodpore_plant',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_tundra_dirt_with_grass' },
    sidelen = 16,
    noise_params = {
        offset = -0.03,
        scale = 0.09,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = 31000,
    y_min = 2,
    decoration = 'everness:bloodspore_plant',
    param2 = 8,
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_bloodspore_plant_on_dirt',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_tundra_dirt' },
    spawn_by = 'everness:forsaken_tundra_dirt_with_grass',
    num_spawn_by = 1,
    sidelen = 16,
    noise_params = {
        offset = -0.03,
        scale = 0.09,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = 31000,
    y_min = 2,
    decoration = 'everness:bloodspore_plant',
    param2 = 8,
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_beach_sand_with_shells',
    deco_type = 'simple',
    place_on = { 'everness:forsaken_tundra_beach_sand' },
    sidelen = 4,
    noise_params = {
        offset = -4,
        scale = 4,
        spread = { x = 50, y = 50, z = 50 },
        seed = 7013,
        octaves = 3,
        persist = 0.7,
    },
    biomes = {
        'everness_forsaken_tundra_beach',
        'everness_forsaken_tundra_ocean',
    },
    y_max = 31000,
    y_min = -10,
    place_offset_y = -1,
    flags = 'force_placement',
    decoration = { 'everness:forsaken_tundra_beach_sand_with_shells' },
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_rocks',
    deco_type = 'schematic',
    place_on = { 'everness:forsaken_tundra_dirt', 'everness:forsaken_tundra_dirt_with_grass' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_forsaken_tundra_rocks.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
})

minetest.register_decoration({
    name = 'everness:sulfur_volcano',
    deco_type = 'schematic',
    place_on = { 'everness:forsaken_tundra_dirt', 'everness:volcanic_sulfur' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_forsaken_tundra' },
    y_max = 31000,
    y_min = 1,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_sulfur_volcano.mts',
    flags = 'place_center_x, place_center_z',
    rotation = 'random',
    spawn_by = { 'everness:forsaken_tundra_dirt', 'everness:volcanic_sulfur' },
    num_spawn_by = 8,
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_under_mold_stone_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 10,
    biomes = { 'everness_forsaken_tundra_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_floors, force_placement',
    decoration = {
        'everness:mold_stone_with_moss'
    },
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_under_mold_stone_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = { 'everness_forsaken_tundra_under' },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    decoration = {
        'everness:moss_block'
    },
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_under_obsidian_floors',
    deco_type = 'simple',
    place_on = { 'default:stone', 'everness:mold_stone_with_moss' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 0.02,
    biomes = { 'everness_forsaken_tundra_under' },
    y_max = -256,
    y_min = -31000,
    decoration = {
        'everness:blue_crying_obsidian',
        'everness:blue_weeping_obsidian',
        'everness:weeping_obsidian'
    },
    flags = 'all_floors, force_placement'
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_under_obsidian_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone', 'everness:moss_block' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 0.02,
    biomes = { 'everness_forsaken_tundra_under' },
    y_max = -256,
    y_min = -31000,
    decoration = {
        'everness:blue_crying_obsidian',
        'everness:blue_weeping_obsidian',
        'everness:weeping_obsidian'
    },
    flags = 'all_ceilings, force_placement'
})

minetest.register_decoration({
    name = 'everness:cactus_orange',
    deco_type = 'simple',
    place_on = { 'everness:mold_stone_with_moss' },
    sidelen = 16,
    noise_params = {
        offset = -0.004,
        scale = 0.01,
        spread = { x = 100, y = 100, z = 100 },
        seed = 137,
        octaves = 3,
        persist = 0.7,
    },
    biomes = { 'everness_forsaken_tundra_under' },
    y_max = -256,
    y_min = -31000,
    decoration = 'everness:cactus_orange',
    height = 2,
    height_max = 6,
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:bloodspore_plant_small',
    deco_type = 'simple',
    place_on = { 'everness:mold_stone_with_moss' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.02,
        spread = { x = 200, y = 200, z = 200 },
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = { 'everness_forsaken_tundra_under' },
    y_max = -256,
    y_min = -31000,
    decoration = 'everness:bloodspore_plant_small',
    param2 = 8,
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:whispering_gourd_vine',
    deco_type = 'simple',
    place_on = { 'everness:moss_block' },
    sidelen = 16,
    fill_ratio = 0.05,
    biomes = { 'everness_forsaken_tundra_under' },
    param2 = 8,
    decoration = {
        'everness:whispering_gourd_vine_1',
        'everness:whispering_gourd_vine_2',
        'everness:bulb_vine_1',
        'everness:bulb_vine_2'
    },
    y_max = -256,
    y_min = -31000,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:glowing_pillar',
    deco_type = 'simple',
    place_on = { 'everness:mold_stone_with_moss' },
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_forsaken_tundra_under' },
    y_max = -256,
    y_min = -31000,
    decoration = { 'everness:glowing_pillar' },
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:everness_willow_tree',
    deco_type = 'schematic',
    place_on = { 'everness:mold_stone_with_moss' },
    place_offset_y = -1,
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.002,
        spread = { x = 250, y = 250, z = 250 },
        seed = 2,
        octaves = 3,
        persist = 0.66
    },
    biomes = { 'everness_forsaken_tundra_under' },
    y_max = -256,
    y_min = -31000,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_willow_tree.mts',
    flags = 'place_center_x, place_center_z, all_floors, force_placement',
    rotation = 'random',
})

local function register_agave_leaf_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:agave_leaf_' .. length,
        deco_type = 'simple',
        place_on = { 'everness:mold_stone_with_moss' },
        sidelen = 16,
        noise_params = {
            offset = offset,
            scale = scale,
            spread = { x = 200, y = 200, z = 200 },
            seed = 329,
            octaves = 3,
            persist = 0.6
        },
        param2 = 8,
        biomes = { 'everness_forsaken_tundra_under' },
        y_max = -256,
        y_min = -31000,
        decoration = 'everness:agave_leaf_' .. length,
        flags = 'all_floors'
    })
end

-- Crystal Grasses

register_agave_leaf_decoration(-0.03, 0.09, 3)
register_agave_leaf_decoration(-0.015, 0.075, 2)
register_agave_leaf_decoration(0, 0.06, 1)

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
    minetest.get_decoration_id('everness:baobab_tree_1'),
    minetest.get_decoration_id('everness:baobab_tree_2')
}

minetest.set_gen_notify('decoration', deco_ids_baobab)

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
