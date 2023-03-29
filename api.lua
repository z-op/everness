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

--- Base class
---@class Everness
---@field bamboo {['growth_stages']: table<number, table>, ['top_leaves_schem']: table}
---@field loot_chest {['default']: table[]}
Everness = {
    bamboo = {
        -- based on height
        growth_stages = {
            --height
            [1] = {
                -- next plant
                { name = 'everness:bamboo_1' },
                { name = 'everness:bamboo_2' },
            },
            [2] = {
                { name = 'everness:bamboo_1' },
                { name = 'everness:bamboo_2' },
                { name = 'everness:bamboo_2' },
            },
            [3] = {
                { name = 'everness:bamboo_3' },
                { name = 'everness:bamboo_4' },
                { name = 'everness:bamboo_4' },
                { name = 'everness:bamboo_5' },
            },
            [4] = {
                { name = 'everness:bamboo_3' },
                { name = 'everness:bamboo_3' },
                { name = 'everness:bamboo_4' },
                { name = 'everness:bamboo_5' },
                { name = 'everness:bamboo_5' },
            },
        },
        top_leaves_schem = {
            { name = 'everness:bamboo_4' },
            { name = 'everness:bamboo_5' },
            { name = 'everness:bamboo_5' },
        }
    },
    loot_chest = {
        default = {
            {
                name = 'default:stick',
                max_count = 25,
                chance = 25
            },
            {
                name = 'default:paper',
                max_count = 10,
                chance = 25
            },
            {
                name = 'default:book',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:skeleton_key',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:flint',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:obsidian_shard',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:clay_brick',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:mese_crystal_fragment',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:gold_ingot',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:bronze_ingot',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:tin_ingot',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:copper_ingot',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:steel_ingot',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:coal_lump',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:pick_stone',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:pick_bronze',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:pick_steel',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:shovel_stone',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:shovel_bronze',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:shovel_steel',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:axe_stone',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:axe_bronze',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:axe_steel',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sword_stone',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sword_bronze',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sword_steel',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:bookshelf',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sign_wall_wood',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:ladder_wood',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:ladder_steel',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:glass',
                max_count = 10,
                chance = 25
            },
            {
                name = 'default:obsidian_glass',
                max_count = 10,
                chance = 25
            },
            {
                name = 'default:tree',
                max_count = 15,
                chance = 25
            },
            {
                name = 'default:jungletree',
                max_count = 15,
                chance = 25
            },
            {
                name = 'default:pine_tree',
                max_count = 15,
                chance = 25
            },
            {
                name = 'default:cactus',
                max_count = 20,
                chance = 25
            },
            {
                name = 'default:large_cactus_seedling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:papyrus',
                max_count = 20,
                chance = 25
            },
            {
                name = 'default:junglegrass',
                max_count = 20,
                chance = 25
            },
            {
                name = 'default:blueberry_bush_sapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:junglesapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:pine_sapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:acacia_sapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:aspen_sapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:clay_lump',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:tin_lump',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:copper_lump',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:iron_lump',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:coalblock',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:steelblock',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:copperblock',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:tinblock',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:bronzeblock',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:mese',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:meselamp',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:obsidian',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:mese_crystal',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:diamond',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:pick_mese',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:shovel_mese',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:axe_mese',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sword_mese',
                max_count = 2,
                chance = 25
            },
            {
                name = 'everness:forsaken_fire',
                max_count = 1,
                chance = 50
            },
        }
    },
    settings = {
        biomes = {
            everness_coral_forest = {
                enabled = minetest.settings:get_bool('everness_coral_forest', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_y_min')) or 6,
            },
            everness_coral_forest_dunes = {
                enabled = minetest.settings:get_bool('everness_coral_forest_dunes', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_dunes_y_max')) or 5,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_dunes_y_min')) or 4,
            },
            everness_coral_forest_ocean = {
                enabled = minetest.settings:get_bool('everness_coral_forest_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_ocean_y_max')) or 3,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_ocean_y_min')) or -10,
            },
            everness_coral_forest_deep_ocean = {
                enabled = minetest.settings:get_bool('everness_coral_forest_deep_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_deep_ocean_y_max')) or -11,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_deep_ocean_y_min')) or -255,
            },
            everness_coral_forest_under = {
                enabled = minetest.settings:get_bool('everness_coral_forest_under', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_under_y_min')) or -31000,
            },
            everness_frosted_icesheet = {
                enabled = minetest.settings:get_bool('everness_frosted_icesheet', true),
                y_max = tonumber(minetest.settings:get('everness_frosted_icesheet_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_frosted_icesheet_y_min')) or -8,
            },
            everness_frosted_icesheet_ocean = {
                enabled = minetest.settings:get_bool('everness_frosted_icesheet_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_frosted_icesheet_ocean_y_max')) or -9,
                y_min = tonumber(minetest.settings:get('everness_frosted_icesheet_ocean_y_min')) or -255,
            },
            everness_frosted_icesheet_under = {
                enabled = minetest.settings:get_bool('everness_frosted_icesheet_under', true),
                y_max = tonumber(minetest.settings:get('everness_frosted_icesheet_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_frosted_icesheet_under_y_min')) or -31000,
            },
            everness_cursed_lands = {
                enabled = minetest.settings:get_bool('everness_cursed_lands', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_y_min')) or 6,
            },
            everness_cursed_lands_dunes = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_dunes', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_dunes_y_max')) or 5,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_dunes_y_min')) or 1,
            },
            everness_cursed_lands_swamp = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_swamp', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_swamp_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_swamp_y_min')) or -1,
            },
            everness_cursed_lands_ocean = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_ocean_y_max')) or -2,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_ocean_y_min')) or -10,
            },
            everness_cursed_lands_deep_ocean = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_ocean_y_max')) or -11,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_ocean_y_min')) or -255,
            },
            everness_cursed_lands_under = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_under', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_under_y_min')) or -31000,
            },
            everness_crystal_forest = {
                enabled = minetest.settings:get_bool('everness_crystal_forest', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_y_min')) or 6,
            },
            everness_crystal_forest_dunes = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_dunes', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_dunes_y_max')) or 5,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_dunes_y_min')) or 1,
            },
            everness_crystal_forest_shore = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_shore', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_shore_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_shore_y_min')) or -1,
            },
            everness_crystal_forest_ocean = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_ocean_y_max')) or -2,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_ocean_y_min')) or -10,
            },
            everness_crystal_forest_deep_ocean = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_deep_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_deep_ocean_y_max')) or -11,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_deep_ocean_y_min')) or -255,
            },
            everness_crystal_forest_under = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_under', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_under_y_min')) or -31000,
            },
            everness_bamboo_forest = {
                enabled = minetest.settings:get_bool('everness_bamboo_forest', true),
                y_max = tonumber(minetest.settings:get('everness_bamboo_forest_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_bamboo_forest_y_min')) or 1,
            },
            everness_bamboo_forest_under = {
                enabled = minetest.settings:get_bool('everness_bamboo_forest_under', true),
                y_max = tonumber(minetest.settings:get('everness_bamboo_forest_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_bamboo_forest_under_y_min')) or -31000,
            },
            everness_forsaken_desert = {
                enabled = minetest.settings:get_bool('everness_forsaken_desert', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_desert_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_forsaken_desert_y_min')) or 4,
            },
            everness_forsaken_desert_ocean = {
                enabled = minetest.settings:get_bool('everness_forsaken_desert_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_desert_ocean_y_max')) or 3,
                y_min = tonumber(minetest.settings:get('everness_forsaken_desert_ocean_y_min')) or -8,
            },
            everness_forsaken_desert_under = {
                enabled = minetest.settings:get_bool('everness_forsaken_desert_under', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_desert_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_forsaken_desert_under_y_min')) or -31000,
            },
            everness_baobab_savanna = {
                enabled = minetest.settings:get_bool('everness_baobab_savanna', true),
                y_max = tonumber(minetest.settings:get('everness_baobab_savanna_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_baobab_savanna_y_min')) or 1,
            },
            everness_forsaken_tundra = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_y_min')) or 2,
            },
            everness_forsaken_tundra_beach = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra_beach', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_beach_y_max')) or 1,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_beach_y_min')) or -3,
            },
            everness_forsaken_tundra_ocean = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_ocean_y_max')) or -4,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_ocean_y_min')) or -255,
            },
            everness_forsaken_tundra_under = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra_under', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_under_y_min')) or -31000,
            },
        },
        features = {
            everness_feature_sneak_pickup = minetest.settings:get_bool('everness_feature_sneak_pickup', true),
            everness_feature_skybox = minetest.settings:get_bool('everness_feature_skybox', true),
        }
    },
}

function Everness.grow_cactus(self, pos, node, params)
    if node.param2 >= 4 then
        return
    end

    pos.y = pos.y - 1

    if minetest.get_item_group(minetest.get_node(pos).name, 'mold_soil') == 0
        or minetest.get_item_group(minetest.get_node(pos).name, 'sand') == 0
    then
        return
    end

    pos.y = pos.y + 1

    local height = 0

    while (node.name == 'everness:cactus_orange' or node.name == 'everness:cactus_blue') and height < 5 do
        height = height + 1
        pos.y = pos.y + 1
        node = minetest.get_node(pos)
    end

    if height == 5 or node.name ~= 'air' then
        return
    end

    if minetest.get_node_light(pos) < 13 then
        return
    end

    minetest.set_node(pos, { name = node.name })

    return true
end

function Everness.emerge_area(self, blockpos, action, calls_remaining, param)
    if not param.total then
        param.total = calls_remaining + 1
        param.current = 0
    end

    param.current = param.current + 1

    if param.total == param.current then
        param.callback(param.data)
    end
end

-- how often node timers for plants will tick, +/- some random value
function Everness.tick_vine(self, pos)
    minetest.get_node_timer(pos):start(math.random(5, 10))
end

-- how often a growth failure tick is retried (e.g. too dark)
function Everness.tick_vine_again(self, pos)
    minetest.get_node_timer(pos):start(math.random(40, 80))
end

-- how often node timers for plants will tick, +/- some random value
function Everness.tick_sulfur_stone(self, pos)
    minetest.get_node_timer(pos):start(math.random(5, 10))
end

-- how often a growth failure tick is retried (e.g. too dark)
function Everness.tick_sulfur_stone_again(self, pos)
    minetest.get_node_timer(pos):start(math.random(40, 80))
end

function Everness.grow_vine(self, pos, elapsed, params)
    local node = minetest.get_node(pos)
    local pos_under = vector.new(pos.x, pos.y - 1, pos.z)
    local node_under = minetest.get_node(pos_under)
    local node_names = params.node_names
    local end_node_name = params.end_node_name
    local end_node_param2 = params.end_node_param2

    -- get length
    local length = 0
    local temp_node = node

    while minetest.get_item_group(temp_node.name, 'vine') > 0 and length < 16 do
        length = length + 1
        temp_node = minetest.get_node(vector.new(pos.x, pos.y + length, pos.z))
    end

    -- stop growing - random height between 12 - 16 nodes
    if length > 11 and length < 16 then
        if math.random(1, 3) == 2 then
            return
        end
    end

    if length >= 16 then
        return
    end

    if minetest.get_item_group(node_under.name, 'vine') > 0 then
        -- stop timer for gown vine
        return
    end

    if node_under.name ~= 'air' then
        Everness:tick_vine_again(pos)
        return
    end

    local new_node_name = node_names[math.random(1, #node_names)]

    minetest.set_node(pos, { name = new_node_name, param2 = node.param2 })
    -- last hanging vine
    minetest.set_node(pos_under, { name = end_node_name, param2 = end_node_param2 and end_node_param2 or node.param2 })

    Everness:tick_vine(pos_under)
end

function Everness.dig_vine(self, pos, node_name, digger)
    --only dig give the vine if shears are used
    if not digger then
        return
    end

    local wielded_item = digger:get_wielded_item()

    if 'everness:vine_shears' == wielded_item:get_name() then
        local inv = digger:get_inventory()

        if inv then
            inv:add_item('main', ItemStack(node_name))
        end
    end
end

--
-- Sounds
--

function Everness.node_sound_frosted_snow_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_frosted_snow_footstep', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_frosted_snow_hit', gain = 0.2 }
    table.dug = table.dug or { name = 'everness_frosted_snow_footstep', gain = 0.3 }
    table.place = table.place or { name = 'everness_frosted_snow_place', gain = 0.25 }
    return table
end

function Everness.node_sound_crystal_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_crystal_chime', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_crystal_chime', gain = 0.3 }
    table.dug = table.dug or { name = 'everness_stone_footstep', gain = 0.3 }
    table.place = table.place or { name = 'everness_crystal_chime', gain = 1.0 }
    return table
end

function Everness.node_sound_bamboo_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_bamboo_hit', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_bamboo_hit', gain = 0.3 }
    table.dug = table.dug or { name = 'everness_bamboo_dug', gain = 0.1 }
    table.place = table.place or { name = 'everness_bamboo_hit', gain = 1.0 }
    return table
end

function Everness.node_sound_mud_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_mud_footstep', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_mud_footstep', gain = 0.3 }
    table.dug = table.dug or { name = 'everness_mud_footstep', gain = 0.1 }
    table.place = table.place or { name = 'everness_mud_footstep', gain = 1.0 }
    return table
end

function Everness.node_sound_grass_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_grass_footstep', gain = 0.4 }
    table.dig = table.dig or { name = 'everness_grass_hit', gain = 1.2 }
    table.dug = table.dug or { name = 'everness_dirt_hit', gain = 1.0 }
    table.place = table.place or { name = 'everness_dirt_hit', gain = 1.0 }
    return table
end

function Everness.node_sound_dirt_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_dirt_footstep', gain = 0.15 }
    table.dig = table.dig or { name = 'everness_dirt_hit', gain = 0.4 }
    table.dug = table.dug or { name = 'everness_dirt_hit', gain = 1.0 }
    table.place = table.place or { name = 'everness_dirt_hit', gain = 1.0 }
    return table
end

function Everness.node_sound_ice_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_ice_footstep', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_ice_hit', gain = 0.4 }
    table.dug = table.dug or { name = 'everness_ice_hit', gain = 1.0 }
    table.place = table.place or { name = 'everness_ice_hit', gain = 1.0 }
    return table
end

function Everness.node_sound_stone_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_stone_footstep', gain = 0.2 }
    table.dig = table.dig or { name = 'everness_stone_hit', gain = 1.0 }
    table.dug = table.dug or { name = 'everness_stone_dug', gain = 0.6 }
    table.place = table.place or { name = 'everness_stone_place', gain = 1.0 }
    return table
end

function Everness.node_sound_leaves_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_leaves_footstep', gain = 0.1 }
    table.dig = table.dig or { name = 'everness_leaves_hit', gain = 0.25 }
    table.dug = table.dug or { name = 'everness_leaves_dug', gain = 0.5 }
    table.place = table.place or { name = 'everness_leaves_place', gain = 0.4 }
    return table
end

function Everness.node_sound_wood_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_wood_footstep', gain = 0.15 }
    table.dig = table.dig or { name = 'everness_wood_hit', gain = 0.5 }
    table.dug = table.dug or { name = 'everness_wood_place', gain = 0.1 }
    table.place = table.place or { name = 'everness_wood_place', gain = 0.15 }
    return table
end

function Everness.node_sound_sand_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_sand_footstep', gain = 0.1 }
    table.dig = table.dig or { name = 'everness_sand_hit', gain = 0.5 }
    table.dug = table.dug or { name = 'everness_sand_dug', gain = 0.1 }
    table.place = table.place or { name = 'everness_sand_place', gain = 0.15 }
    return table
end

function Everness.node_sound_metal_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_metal_footstep', gain = 0.1 }
    table.dig = table.dig or { name = 'everness_metal_hit', gain = 0.5 }
    table.dug = table.dug or { name = 'everness_metal_dug', gain = 0.1 }
    table.place = table.place or { name = 'everness_metal_place', gain = 0.15 }
    return table
end

function Everness.node_sound_glass_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_glass_footstep', gain = 0.02 }
    table.dig = table.dig or { name = 'everness_glass_footstep', gain = 0.05 }
    table.dug = table.dug or { name = 'everness_glass_dug', gain = 0.4 }
    table.place = table.place or { name = 'everness_glass_place', gain = 0.2 }
    return table
end

function Everness.node_sound_thin_glass_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_thin_glass_footstep', gain = 0.3 }
    table.dig = table.dig or { name = 'everness_thin_glass_footstep', gain = 0.5 }
    table.dug = table.dug or { name = 'everness_break_thin_glass', gain = 1.0 }
    table.place = table.place or { name = 'everness_glass_place', gain = 0.2 }
    return table
end

function Everness.node_sound_snow_defaults(table)
    table = table or {}
    table.footstep = table.footstep or { name = 'everness_snow_footstep', gain = 0.1 }
    table.dig = table.dig or { name = 'everness_snow_hit', gain = 0.2 }
    table.dug = table.dug or { name = 'everness_snow_footstep', gain = 0.2 }
    table.place = table.place or { name = 'everness_snow_place', gain = 0.3 }
    return table
end

--
-- Forsted Cave Icicles
--

function Everness.stack_icicle_recursive(node, pos_node, incrementer, pos_marker, direction)
    local nb = node
    local pos = pos_node
    local inc = incrementer
    local m_pos = pos_marker

    while nb.name == 'air' or nb.name == 'ignore' do
        if nb.name == 'ignore' then
            Everness.emerge_icicle_area_recursive(pos, inc, m_pos, direction)
            break
        else
            minetest.set_node(pos, { name = 'everness:frosted_cave_ice_illuminating' })
            -- Shift 1 down
            inc = inc + 1
            local y_offset = (direction == 'down') and (m_pos.y - inc) or (m_pos.y + inc)
            pos = vector.new(m_pos.x, y_offset, m_pos.z)
            nb = minetest.get_node(pos)
        end
    end
end

function Everness.emerge_icicle_area_recursive(pos_node, incrementer, pos_marker, direction)
    local y_offset = (direction == 'down') and (pos_node.y - 16) or (pos_node.y + 16)

    minetest.emerge_area(
        vector.new(pos_node.x - 1, pos_node.y, pos_node.z - 1),
        vector.new(pos_node.x + 1, y_offset, pos_node.z + 1),
        function(blockpos, action, calls_remaining, param)
            Everness:emerge_area(blockpos, action, calls_remaining, param)
        end,
        {
            callback = function(data)
                local incrementer_cllbck = data.incrementer
                local pos_node_cllbck = data.pos_node
                local node_cllbck = minetest.get_node(pos_node_cllbck)

                Everness.stack_icicle_recursive(node_cllbck, pos_node_cllbck, incrementer_cllbck, pos_marker, direction)
            end,
            data = {
                incrementer = incrementer,
                pos_node = pos_node
            }
        }
    )
end

function Everness.use_shell_of_underwater_breathing(self, itemstack, user, pointed_thing)
    if not user then
        return
    end

    local pos_player = user:get_pos()

    if pointed_thing.type == 'node' then
        local pos_pt = minetest.get_pointed_thing_position(pointed_thing)

        if not pos_pt then
            return itemstack
        end

        local pointed_node = minetest.get_node(pos_pt)
        local pointed_node_def = minetest.registered_nodes[pointed_node.name]

        if not pointed_node or not pointed_node_def then
            return itemstack
        end

        if pointed_node_def.on_rightclick then
            return pointed_node_def.on_rightclick(pos_pt, pointed_node, user, itemstack, pointed_thing)
        end
    end

    local node_head = minetest.get_node(
        vector.new(
            math.floor(pos_player.x + 0.5),
            math.ceil(pos_player.y + 1),
            math.floor(pos_player.z + 0.5)
        )
    )
    local breath = user:get_breath()

    if minetest.get_item_group(node_head.name, 'water') > 0 and breath < 9 then
        -- Under water
        user:set_breath(9)

        if not minetest.settings:get_bool('creative_mode')
            or not minetest.check_player_privs(user:get_player_name(), { creative = true })
        then
            itemstack:add_wear(65535 / 20)
        end

        minetest.sound_play('everness_underwater_bubbles', {
            object = user,
            gain = 1.0,
            max_hear_distance = 16
        })

        minetest.add_particlespawner({
            amount = 20,
            time = 0.1,
            pos = {
                min = vector.new(pos_player.x - 0.25, pos_player.y + 1.25, pos_player.z - 0.25),
                max = vector.new(pos_player.x + 0.25, pos_player.y + 1.5, pos_player.z + 0.25)
            },
            vel = {
                min = vector.new(-0.5, 0, -0.5),
                max = vector.new(0.5, 0, 0.5)
            },
            acc = {
                min = vector.new(-0.5, 4, -0.5),
                max = vector.new(0.5, 1, 0.5),
            },
            exptime = {
                min = 1,
                max = 2
            },
            size = {
                min = 0.5,
                max = 2
            },
            texture = {
                name = 'everness_bubble.png',
                alpha_tween = {
                    1, 0,
                    start = 0.75
                }
            }
        })
    end

    return itemstack
end

function Everness.sapling_on_place(self, itemstack, placer, pointed_thing, props)
    local _props = props or {}
    if minetest.get_modpath('default') or minetest.global_exists('default') then
        if default.sapling_on_place then
            itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
                _props.sapling_name,
                -- minp, maxp to be checked, relative to sapling pos
                -- minp_relative.y = 1 because sapling pos has been checked
                _props.minp_relative,
                _props.maxp_relative,
                -- maximum interval of interior volume check
                _props.interval
            )

            return itemstack
        end
    elseif minetest.get_modpath('mcl_util') and minetest.global_exists('mcl_util') then
        local on_place_func = mcl_util.generate_on_place_plant_function(function(pos, node)
            local node_below = minetest.get_node_or_nil({ x = pos.x, y = pos.y - 1, z = pos.z })

            if not node_below then
                return false
            end

            local nn = node_below.name

            return minetest.get_item_group(nn, 'grass_block') == 1
                or nn == 'mcl_core:podzol'
                or nn == 'mcl_core:podzol_snow'
                or nn == 'mcl_core:dirt'
                or nn == 'mcl_core:mycelium'
                or nn == 'mcl_core:coarse_dirt'
        end)

        return on_place_func(itemstack, placer, pointed_thing)
    end
end

--
-- Leafdecay - taken from MTG
--

-- Prevent decay of placed leaves

Everness.after_place_leaves = function(self, pos, placer, itemstack, pointed_thing)
    if placer and placer:is_player() then
        local node = minetest.get_node(pos)
        node.param2 = 1
        minetest.set_node(pos, node)
    end
end

-- Leafdecay
local function leafdecay_after_destruct(pos, oldnode, def)
    for _, v in pairs(minetest.find_nodes_in_area(vector.subtract(pos, def.radius),
        vector.add(pos, def.radius), def.leaves))
    do
        local node = minetest.get_node(v)
        local timer = minetest.get_node_timer(v)
        if node.param2 ~= 1 and not timer:is_started() then
            timer:start(math.random(20, 120) / 10)
        end
    end
end

local movement_gravity = tonumber(minetest.settings:get('movement_gravity')) or 9.81

local function leafdecay_on_timer(pos, def)
    if minetest.find_node_near(pos, def.radius, def.trunks) then
        return false
    end

    local node = minetest.get_node(pos)
    local drops = minetest.get_node_drops(node.name)

    for _, item in ipairs(drops) do
        local is_leaf
        for _, v in pairs(def.leaves) do
            if v == item then
                is_leaf = true
            end
        end
        if minetest.get_item_group(item, 'leafdecay_drop') ~= 0
            or not is_leaf
        then
            minetest.add_item({
                x = pos.x - 0.5 + math.random(),
                y = pos.y - 0.5 + math.random(),
                z = pos.z - 0.5 + math.random(),
            }, item)
        end
    end

    minetest.remove_node(pos)
    minetest.check_for_falling(pos)

    -- spawn a few particles for the removed node
    minetest.add_particlespawner({
        amount = 8,
        time = 0.001,
        minpos = vector.subtract(pos, { x = 0.5, y = 0.5, z = 0.5 }),
        maxpos = vector.add(pos, { x = 0.5, y = 0.5, z = 0.5 }),
        minvel = vector.new(-0.5, -1, -0.5),
        maxvel = vector.new(0.5, 0, 0.5),
        minacc = vector.new(0, -movement_gravity, 0),
        maxacc = vector.new(0, -movement_gravity, 0),
        minsize = 0,
        maxsize = 0,
        node = node,
    })
end

function Everness.register_leafdecay(self, def)
    assert(def.leaves)
    assert(def.trunks)
    assert(def.radius)

    for _, v in pairs(def.trunks) do
        minetest.override_item(v, {
            after_destruct = function(pos, oldnode)
                leafdecay_after_destruct(pos, oldnode, def)
            end,
        })
    end

    for _, v in pairs(def.leaves) do
        minetest.override_item(v, {
            on_timer = function(pos)
                leafdecay_on_timer(pos, def)
            end,
        })
    end
end

function Everness.register_node(self, name, def, props)
    local _def = table.copy(def)
    local _name = name

    if _def.groups then
        ---
        -- Damage and digging time defining groups
        ---

        if _def.groups.crumbly then
            -- dirt, sand
            _def.groups.handy = 1
            _def.groups.shovely = 1
            _def.groups.building_block = 1
            _def.groups.enderman_takable = 1

            _def._mcl_blast_resistance = 0.5
            _def._mcl_hardness = 2
        end

        if _def.groups.cracky then
            -- tough but crackable stuff like stone
            _def.groups.pickaxey = 1
            _def.groups.building_block = 1

            _def._mcl_blast_resistance = 6
            _def._mcl_hardness = 1.5
        end

        if _def.groups.snappy then
            -- something that can be cut using things like scissors, shears
            _def.groups.handy = 1
            _def.groups.hoey = 1
            _def.groups.shearsy = 1
            _def.groups.swordy = 1
            _def.groups.dig_by_piston = 1
            _def.groups.flammable = 2
            _def.groups.fire_encouragement = 30
            _def.groups.fire_flammability = 60
            _def.groups.deco_block = 1
            _def.groups.compostability = 30

            _def._mcl_blast_resistance = 0.2
            _def._mcl_hardness = 0.2
        end

        if _def.groups.choppy then
            -- something that can be cut using force; e.g. trees, wooden planks
            _def.groups.handy = 1
            _def.groups.axey = 1
            _def.groups.flammable = 2
            _def.groups.building_block = 1
            _def.groups.material_wood = 1
            _def.groups.fire_encouragement = 5
            _def.groups.fire_flammability = 5

            _def._mcl_blast_resistance = 2
            _def._mcl_hardness = 2
        end

        if _def.groups.fleshy then
            -- living things like animals and the player. This could imply some blood effects when hitting
            _def.groups.food = 2
            _def.groups.eatable = 4
            _def.groups.compostability = 65
            _def._mcl_saturation = 2.4
        end

        if _def.groups.oddly_breakable_by_hand then
            -- can be added to nodes that shouldn't logically be breakable by the hand but are
            _def.groups.handy = 1
        end

        if _def.groups.explody then
            -- especially prone to explosions
            _def._mcl_blast_resistance = 1200
            _def._mcl_hardness = 50
        end

        -- material groups
        if _def.groups.sand then
            _def.groups.soil_sugarcane = 1
            _def.groups.material_sand = 1
        end

        if _def.groups.stone then
            _def.groups.material_stone = 1
        end

        if _def.groups.soil then
            _def.groups.soil_sapling = 2
            _def.groups.soil_sugarcane = 1
            _def.groups.cultivatable = 2
        end
    end

    minetest.register_node(_name, _def)
end
