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
-- Blocks
--

minetest.register_craft({
    output = 'everness:snowcobble 9',
    recipe = {
        { 'default:snowblock', 'default:snowblock', 'default:snowblock' },
        { 'default:snowblock', 'default:snowblock', 'default:snowblock' },
        { 'default:snowblock', 'default:snowblock', 'default:snowblock' },
    }
})

minetest.register_craft({
    output = 'everness:icecobble 9',
    recipe = {
        { 'default:ice', 'default:ice', 'default:ice' },
        { 'default:ice', 'default:ice', 'default:ice' },
        { 'default:ice', 'default:ice', 'default:ice' },
    }
})

minetest.register_craft({
    output = 'everness:snowcobble 9',
    recipe = {
        { 'everness:frosted_snowblock', 'everness:frosted_snowblock', 'everness:frosted_snowblock' },
        { 'everness:frosted_snowblock', 'everness:frosted_snowblock', 'everness:frosted_snowblock' },
        { 'everness:frosted_snowblock', 'everness:frosted_snowblock', 'everness:frosted_snowblock' },
    }
})

minetest.register_craft({
    output = 'everness:icecobble 9',
    recipe = {
        { 'everness:frosted_ice', 'everness:frosted_ice', 'everness:frosted_ice' },
        { 'everness:frosted_ice', 'everness:frosted_ice', 'everness:frosted_ice' },
        { 'everness:frosted_ice', 'everness:frosted_ice', 'everness:frosted_ice' },
    }
})

minetest.register_craft({
    type = 'shapeless',
    output = 'everness:frosted_ice_translucent',
    recipe = { 'everness:frosted_ice' }
})

minetest.register_craft({
    type = 'shapeless',
    output = 'everness:frosted_ice',
    recipe = { 'everness:frosted_ice_translucent' }
})

minetest.register_craft({
    output = 'everness:bamboo_block',
    recipe = {
        { 'everness:bamboo_item', 'everness:bamboo_item', 'everness:bamboo_item' },
        { 'everness:bamboo_item', 'everness:bamboo_item', 'everness:bamboo_item' },
        { 'everness:bamboo_item', 'everness:bamboo_item', 'everness:bamboo_item' },
    }
})

minetest.register_craft({
    output = 'everness:bamboo_wood',
    recipe = {
        { 'everness:bamboo_item', 'everness:bamboo_item', '' },
        { 'everness:bamboo_item', 'everness:bamboo_item', '' },
        { '', '', '' },
    }
})

minetest.register_craft({
    output = 'everness:trapdoor_bamboo 2',
    recipe = {
        { 'everness:bamboo_wood', 'everness:bamboo_wood', 'everness:bamboo_wood' },
        { 'everness:bamboo_wood', 'everness:bamboo_wood', 'everness:bamboo_wood' },
        { '', '', '' },
    }
})

minetest.register_craft({
    output = 'everness:bamboo_mosaic_wood',
    recipe = {
        { 'everness:bamboo_wood', 'everness:bamboo_wood' },
        { 'everness:bamboo_wood', 'everness:bamboo_wood' },
    }
})

minetest.register_craft({
    output = 'everness:pyriteblock',
    recipe = {
        { 'everness:pyrite_ingot', 'everness:pyrite_ingot', 'everness:pyrite_ingot' },
        { 'everness:pyrite_ingot', 'everness:pyrite_ingot', 'everness:pyrite_ingot' },
        { 'everness:pyrite_ingot', 'everness:pyrite_ingot', 'everness:pyrite_ingot' },
    }
})

minetest.register_craft({
    output = 'everness:pyrite_glass',
    recipe = {
        { 'default:glass' },
        { 'everness:pyrite_ingot' },
    }
})

minetest.register_craft({
    output = 'everness:pyrite_lantern',
    recipe = {
        { 'everness:pyrite_glass' },
        { 'everness:pyrite_ingot' },
    }
})

minetest.register_craft({
    output = 'everness:pyriteblock_brick 4',
    recipe = {
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
    }
})

minetest.register_craft({
    output = 'everness:pyriteblock_slab_brick 2',
    recipe = {
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
    }
})

minetest.register_craft({
    output = 'everness:pyriteblock_spiral 8',
    recipe = {
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
        { 'everness:pyriteblock_forged', '', 'everness:pyriteblock_forged' },
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
    }
})

minetest.register_craft({
    output = 'everness:pyrite_roof_tile 6',
    recipe = {
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
    }
})

minetest.register_craft({
    output = 'everness:pyrite_pillar_bottom 5',
    recipe = {
        { '', 'everness:pyriteblock_forged', '' },
        { '', 'everness:pyriteblock_forged', '' },
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
    }
})

minetest.register_craft({
    output = 'everness:pyrite_pillar_middle 3',
    recipe = {
        { '', 'everness:pyriteblock_forged', '' },
        { '', 'everness:pyriteblock_forged', '' },
        { '', 'everness:pyriteblock_forged', '' },
    }
})

minetest.register_craft({
    output = 'everness:pyrite_pillar_top 5',
    recipe = {
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
        { '', 'everness:pyriteblock_forged', '' },
        { '', 'everness:pyriteblock_forged', '' },
    }
})

minetest.register_craft({
    output = 'everness:pyrite_pillar_small 7',
    recipe = {
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
        { '', 'everness:pyriteblock_forged', '' },
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
    }
})

minetest.register_craft({
    output = 'everness:pyriteblock_polished 9',
    recipe = {
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
        { 'everness:pyriteblock_forged', 'everness:pyriteblock_forged', 'everness:pyriteblock_forged' },
    }
})

minetest.register_craft({
    output = 'everness:baobab_wood 4',
    recipe = {
        { 'everness:baobab_tree' },
    }
})

minetest.register_craft({
    output = 'everness:dry_wood 4',
    recipe = {
        { 'everness:dry_tree' },
    }
})

minetest.register_craft({
    output = 'everness:willow_wood 4',
    recipe = {
        { 'everness:willow_tree' },
    }
})

minetest.register_craft({
    output = 'everness:sequoia_wood 4',
    recipe = {
        { 'everness:sequoia_tree' },
    }
})

minetest.register_craft({
    output = 'everness:coral_sandstone 4',
    recipe = {
        { 'everness:coral_sand', 'everness:coral_sand' },
        { 'everness:coral_sand', 'everness:coral_sand' },
    }
})

minetest.register_craft({
    output = 'everness:coral_sandstone_brick 4',
    recipe = {
        { 'everness:coral_sandstone', 'everness:coral_sandstone' },
        { 'everness:coral_sandstone', 'everness:coral_sandstone' },
    }
})

minetest.register_craft({
    output = 'everness:coral_sandstone_chiseled 9',
    recipe = {
        { 'everness:coral_sandstone', 'everness:coral_sandstone', 'everness:coral_sandstone' },
        { 'everness:coral_sandstone', 'everness:coral_sandstone', 'everness:coral_sandstone' },
        { 'everness:coral_sandstone', 'everness:coral_sandstone', 'everness:coral_sandstone' },
    }
})

minetest.register_craft({
    output = 'everness:coral_sandstone_carved_1 9',
    recipe = {
        { 'everness:coral_sandstone_chiseled', 'everness:coral_sandstone_chiseled' },
        { 'everness:coral_sandstone_chiseled', 'everness:coral_sandstone_chiseled' },
    }
})

minetest.register_craft({
    output = 'everness:coral_white_sandstone 4',
    recipe = {
        { 'everness:coral_white_sand', 'everness:coral_white_sand' },
        { 'everness:coral_white_sand', 'everness:coral_white_sand' },
    }
})

minetest.register_craft({
    output = 'everness:coral_white_sandstone_brick 4',
    recipe = {
        { 'everness:coral_white_sandstone', 'everness:coral_white_sandstone' },
        { 'everness:coral_white_sandstone', 'everness:coral_white_sandstone' },
    }
})

minetest.register_craft({
    output = 'everness:coral_white_sandstone_pillar 3',
    recipe = {
        { '', 'everness:coral_white_sandstone', '' },
        { '', 'everness:coral_white_sandstone', '' },
        { '', 'everness:coral_white_sandstone', '' },
    }
})

minetest.register_craft({
    output = 'everness:quartz_block 4',
    recipe = {
        { 'everness:quartz_crystal', 'everness:quartz_crystal' },
        { 'everness:quartz_crystal', 'everness:quartz_crystal' },
    }
})

minetest.register_craft({
    output = 'everness:quartz_chiseled 4',
    recipe = {
        { 'everness:quartz_block', 'everness:quartz_block' },
        { 'everness:quartz_block', 'everness:quartz_block' },
    }
})

minetest.register_craft({
    output = 'everness:quartz_pillar 3',
    recipe = {
        { '', 'everness:quartz_block', '' },
        { '', 'everness:quartz_block', '' },
        { '', 'everness:quartz_block', '' },
    }
})

minetest.register_craft({
    output = 'everness:coral_desert_stone_brick 4',
    recipe = {
        { 'everness:coral_desert_stone', 'everness:coral_desert_stone' },
        { 'everness:coral_desert_stone', 'everness:coral_desert_stone' },
    }
})

minetest.register_craft({
    output = 'everness:coral_desert_stone_block 9',
    recipe = {
        { 'everness:coral_desert_stone', 'everness:coral_desert_stone', 'everness:coral_desert_stone' },
        { 'everness:coral_desert_stone', 'everness:coral_desert_stone', 'everness:coral_desert_stone' },
        { 'everness:coral_desert_stone', 'everness:coral_desert_stone', 'everness:coral_desert_stone' },
    }
})

--
-- Tools
--

minetest.register_craft({
    output = 'everness:vine_shears',
    recipe = {
        { '', 'default:steel_ingot', '' },
        { 'group:stick', 'group:wood', 'default:steel_ingot' },
        { '', '', 'group:stick' }
    }
})

minetest.register_craft({
    output = 'everness:pick_illuminating',
    recipe = {
        { 'everness:crystal_purple', 'everness:coral_tree_bioluminescent', 'everness:crystal_purple' },
        { '', 'everness:sulfur_stone', '' },
        { '', 'group:stick', '' }
    }
})

minetest.register_craft({
    output = 'everness:shovel_silk',
    recipe = {
        { 'everness:ancient_emerald_ice' },
        { 'everness:glowing_pillar' },
        { 'everness:crystal_purple' }
    }
})

--
-- Fuels
--

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:coral_burdock_1',
    burntime = 3,
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:coral_burdock_2',
    burntime = 3,
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:bamboo_block',
    burntime = 15,
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:bamboo_dry_block',
    burntime = 15,
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:bamboo_wood',
    burntime = 15,
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:bamboo_mosaic_wood',
    burntime = 15,
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:bamboo_item',
    burntime = 3,
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:trapdoor_bamboo',
    burntime = 7,
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:door_bamboo',
    burntime = 14,
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:baobab_wood',
    burntime = 8,
})

minetest.register_craft({
    type = 'fuel',
    recipe = 'everness:sequoia_wood',
    burntime = 6,
})

--
-- Cooking recipes
--

minetest.register_craft({
    type = 'cooking',
    output = 'everness:coral_desert_stone',
    recipe = 'everness:coral_desert_cobble',
})

minetest.register_craft({
    type = 'cooking',
    output = 'everness:coral_desert_stone',
    recipe = 'everness:coral_desert_mossy_cobble',
})

minetest.register_craft({
    type = 'cooking',
    output = 'everness:forsaken_tundra_stone',
    recipe = 'everness:forsaken_tundra_cobble',
})

minetest.register_craft({
    output = 'everness:forsaken_tundra_brick 4',
    recipe = {
        { 'everness:forsaken_tundra_stone', 'everness:forsaken_tundra_stone' },
        { 'everness:forsaken_tundra_stone', 'everness:forsaken_tundra_stone' },
    }
})

minetest.register_craft({
    type = 'cooking',
    output = 'everness:bamboo_dry_block',
    recipe = 'everness:bamboo_block',
})

minetest.register_craft({
    type = 'cooking',
    output = 'everness:baobab_fruit_roasted',
    recipe = 'everness:baobab_fruit',
})

minetest.register_craft({
    type = 'cooking',
    output = 'everness:pyriteblock_forged',
    recipe = 'everness:pyriteblock',
})

--
-- Saplings
--

minetest.register_craft({
    output = 'everness:coral_tree_bioluminescent_sapling',
    recipe = {
        { 'default:meselamp' },
        { 'everness:coral_tree_sapling' },
    }
})

minetest.register_craft({
    output = 'everness:cursed_dream_tree_sapling',
    recipe = {
        { 'default:meselamp' },
        { 'everness:dry_tree_sapling' },
    }
})

minetest.register_craft({
    output = 'everness:crystal_tree_large_sapling',
    recipe = {
        { 'everness:crystal_tree_sapling', 'everness:crystal_tree_sapling' },
        { 'everness:crystal_tree_sapling', 'everness:crystal_tree_sapling' }
    }
})
