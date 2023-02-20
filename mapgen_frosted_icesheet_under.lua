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

local y_max = Everness.settings.biomes.everness_frosted_icesheet_under.y_max
local y_min = Everness.settings.biomes.everness_frosted_icesheet_under.y_min

-- Frosted Icesheet Under

minetest.register_biome({
    name = 'everness_frosted_icesheet_under',
    node_cave_liquid = { 'default:water_source', 'default:lava_source' },
    node_dungeon = 'everness:icecobble',
    node_dungeon_alt = 'everness:snowcobble',
    node_dungeon_stair = 'stairs:stair_ice',
    y_max = y_max,
    y_min = y_min,
    heat_point = 0,
    humidity_point = 93,
})

--
-- Register ores
--

-- Blob ore.
-- These before scatter ores to avoid other ores in blobs.

minetest.register_ore({
    ore_type = 'blob',
    ore = 'everness:bone',
    wherein = { 'default:stone' },
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
    biomes = { 'everness_frosted_icesheet_under' }
})

--
-- Register decorations
--

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_floors',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    place_offset_y = -1,
    sidelen = 16,
    fill_ratio = 10,
    biomes = { 'everness_frosted_icesheet_under' },
    y_max = y_max,
    y_min = y_min,
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
    name = 'everness:frosted_icesheet_under_ceilings',
    deco_type = 'simple',
    place_on = { 'default:stone' },
    sidelen = 16,
    fill_ratio = 0.4,
    biomes = { 'everness_frosted_icesheet_under' },
    y_max = y_max,
    y_min = y_min,
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
    name = 'everness:frosted_icesheet_under_amaranita_lantern',
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
    y_max = y_max - 500 > y_min and y_max - 500 or y_max,
    y_min = y_min,
    decoration = { 'everness:amaranita_lantern' },
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_vines',
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
    y_max = y_max,
    y_min = y_min,
    flags = 'all_ceilings',
    spawn_by = 'air',
    num_spawn_by = 8
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_plants',
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
    y_max = y_max,
    y_min = y_min,
    decoration = {
        'everness:blooming_cooksonia',
        'everness:creeping_moss_spores',
        'everness:frosted_icicle_floor',
    },
    flags = 'all_floors',
})

minetest.register_decoration({
    name = 'everness:frosted_icesheet_under_crystal',
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
    y_max = y_max - 250 > y_min and y_max - 250 or y_max,
    y_min = y_min,
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
