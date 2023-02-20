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

local y_max = Everness.settings.biomes.everness_forsaken_tundra_under.y_max
local y_min = Everness.settings.biomes.everness_forsaken_tundra_under.y_min

-- Forsaken Tundra Under

minetest.register_biome({
    name = 'everness_forsaken_tundra_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'everness:forsaken_tundra_cobble',
    node_dungeon_alt = 'everness:forsaken_tundra_brick',
    node_dungeon_stair = 'stairs:stair_forsaken_tundra_cobble',
    y_max = y_max,
    y_min = y_min,
    heat_point = 10,
    humidity_point = 10,
})

--
-- Register ores
--

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:sulfur_stone',
    wherein = { 'default:stone', 'everness:forsaken_tundra_stone' },
    clust_scarcity = 16 * 16 * 16,
    clust_size = 5,
    y_max = y_max,
    y_min = y_min,
    noise_threshold = 0.0,
    noise_params = {
        offset = 0.5,
        scale = 0.2,
        spread = { x = 5, y = 5, z = 5 },
        seed = -316,
        octaves = 1,
        persist = 0.0
    },
    biomes = { 'everness_forsaken_tundra_under' }
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:forsaken_tundra_under_mold_stone_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    place_offset_y = -1,
    fill_ratio = 10,
    biomes = { 'everness_forsaken_tundra_under' },
    y_max = y_max,
    y_min = y_min,
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
    y_max = y_max,
    y_min = y_min,
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
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
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
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
    decoration = {
        'everness:blue_crying_obsidian',
        'everness:blue_weeping_obsidian',
        'everness:weeping_obsidian'
    },
    flags = 'all_ceilings, force_placement'
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_under_cactus_orange',
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
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
    decoration = 'everness:cactus_orange',
    height = 2,
    height_max = 6,
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_under_bloodspore_plant_small',
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
    y_max = y_max,
    y_min = y_min,
    decoration = 'everness:bloodspore_plant_small',
    param2 = 8,
    flags = 'all_floors'
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_under_vines',
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
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_under_glowing_pillar',
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
    y_max = y_max - 1000 > y_min and y_max - 1000 or y_max,
    y_min = y_min,
    decoration = { 'everness:glowing_pillar' },
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:forsaken_tundra_under_willow_tree',
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
    y_max = y_max - 1500 > y_min and y_max - 1500 or y_max,
    y_min = y_min,
    schematic = minetest.get_modpath('everness') .. '/schematics/everness_willow_tree.mts',
    flags = 'place_center_x, place_center_z, all_floors, force_placement',
    rotation = 'random',
})

local function register_agave_leaf_decoration(offset, scale, length)
    minetest.register_decoration({
        name = 'everness:forsaken_tundra_under_agave_leaf_' .. length,
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
        y_max = y_max,
        y_min = y_min,
        decoration = 'everness:agave_leaf_' .. length,
        flags = 'all_floors'
    })
end

-- Grasses

register_agave_leaf_decoration(-0.03, 0.09, 3)
register_agave_leaf_decoration(-0.015, 0.075, 2)
register_agave_leaf_decoration(0, 0.06, 1)
