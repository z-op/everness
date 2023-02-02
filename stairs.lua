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

local S = minetest.get_translator(minetest.get_current_modname())

stairs = stairs --[[@as MtgStairs]]

stairs.register_stair_and_slab(
    'coral_desert_stone',
    'everness:coral_desert_stone',
    { cracky = 3 },
    { 'everness_coral_desert_stone.png' },
    'Coral Desert Stone Stair',
    'Coral Desert Stone Slab',
    default.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_desert_cobble',
    'everness:coral_desert_cobble',
    { cracky = 3 },
    { 'everness_coral_desert_cobble.png' },
    'Coral Desert Cobblestone Stair',
    'Coral Desert Cobblestone Slab',
    default.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_desert_mossy_cobble',
    'everness:coral_desert_mossy_cobble',
    { cracky = 3 },
    { 'everness_coral_desert_mossy_cobble.png' },
    'Coral Mossy Cobblestone Stair',
    'Coral Mossy Cobblestone Slab',
    default.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_brick',
    'everness:cursed_brick',
    { cracky = 2 },
    { 'everness_cursed_brick.png' },
    'Cursed Brick Stair',
    'Cursed Brick Slab',
    default.node_sound_stone_defaults(),
    true
)

-- Quartz

stairs.register_stair_and_slab(
    'quartz_block',
    'everness:quartz_block',
    { cracky = 2 },
    {
        'everness_quartz_block_top.png',
        'everness_quartz_block_bottom.png',
        'everness_quartz_block_side.png',
    },
    S('Quartz Block Stair'),
    S('Quartz Block Slab'),
    default.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'quartz_chiseled',
    'everness:quartz_chiseled',
    { cracky = 2 },
    {
        'everness_quartz_block_chiseled_top.png',
        'everness_quartz_block_chiseled_top.png',
        'everness_quartz_block_chiseled.png',
    },
    S('Quartz Chiseled Stair'),
    S('Quartz Chiseled Slab'),
    default.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'quartz_pillar',
    'everness:quartz_pillar',
    { cracky = 2 },
    {
        'everness_quartz_block_lines_top.png',
        'everness_quartz_block_lines_top.png',
        'everness_quartz_block_lines.png',
    },
    S('Quartz Pillar Stair'),
    S('Quartz Pillar Slab'),
    default.node_sound_stone_defaults(),
    true
)

-- Dry Wood

stairs.register_stair_and_slab(
    'dry_wood',
    'everness:dry_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_dry_wood.png' },
    S('Dry Wood Stair'),
    S('Dry Wood Slab'),
    default.node_sound_wood_defaults(),
    true
)

-- Bamboo Wood

stairs.register_stair_and_slab(
    'bamboo_wood',
    'everness:bamboo_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_dry_bamboo_block_side.png' },
    S('Bamboo Wood Stair'),
    S('Bamboo Wood Slab'),
    default.node_sound_wood_defaults(),
    true
)

stairs.register_stair_and_slab(
    'bamboo_mosaic_wood',
    'everness:bamboo_mosaic_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_bamboo_mosaic.png' },
    S('Bamboo Mosaic Wood Stair'),
    S('Bamboo Mosaic Wood Slab'),
    default.node_sound_wood_defaults(),
    true
)

-- Forsaken stone

stairs.register_stair_and_slab(
    'forsaken_desert_brick',
    'everness:forsaken_desert_brick',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_brick.png' },
    S('Forsaken Desert Brick Stair'),
    S('Forsaken Desert Brick Slab'),
    default.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_desert_brick_red',
    'everness:forsaken_desert_brick_red',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_brick_red.png' },
    S('Forsaken Desert Brick Red Stair'),
    S('Forsaken Desert Brick Red Slab'),
    default.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_desert_chiseled_stone',
    'everness:forsaken_desert_chiseled_stone',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_chiseled_stone_side.png' },
    S('Forsaken Desert Chiseled Stone Stair'),
    S('Forsaken Desert Chiseled Stone Slab'),
    default.node_sound_stone_defaults(),
    true
)

-- Baobab Wood

stairs.register_stair_and_slab(
    'baobab_wood',
    'everness:baobab_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_baobab_wood.png' },
    S('Baobab Wood Stair'),
    S('Baobab Wood Slab'),
    default.node_sound_wood_defaults(),
    true
)

-- Sequoia Wood

stairs.register_stair_and_slab(
    'sequoia_wood',
    'everness:sequoia_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_sequoia_wood.png' },
    S('Sequoia Wood Stair'),
    S('Sequoia Wood Slab'),
    default.node_sound_wood_defaults(),
    true
)

-- Forsaken Tundra

stairs.register_stair_and_slab(
    'forsaken_tundra_cobble',
    'everness:forsaken_tundra_cobble',
    { cracky = 3, stone = 2 },
    { 'everness_forsaken_tundra_cobblestone.png' },
    S('Forsaken Tundra Cobblestone Stair'),
    S('Forsaken Tundra Cobblestone Slab'),
    default.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_tundra_stone',
    'everness:forsaken_tundra_stone',
    { cracky = 3, stone = 1 },
    { 'everness_forsaken_tundra_stone.png' },
    S('Forsaken Tundra Stone Stair'),
    S('Forsaken Tundra Stone Slab'),
    default.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_tundra_brick',
    'everness:forsaken_tundra_brick',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_tundra_brick.png' },
    S('Forsaken Tundra Brick Stair'),
    S('Forsaken Tundra Brick Slab'),
    default.node_sound_stone_defaults(),
    true
)

-- Willow Wood

stairs.register_stair_and_slab(
    'willow_wood',
    'everness:willow_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_willow_wood.png' },
    S('Willow Wood Stair'),
    S('Willow Wood Slab'),
    default.node_sound_wood_defaults(),
    true
)

-- stairs.register_stair_and_slab(
--     'desert_stonebrick',
--     'default:desert_stonebrick',
--     { cracky = 2 },
--     { 'default_desert_stone_brick.png' },
--     'Desert Stone Brick Stair',
--     'Desert Stone Brick Slab',
--     default.node_sound_stone_defaults(),
--     false
-- )

-- stairs.register_stair_and_slab(
--     'desert_stone_block',
--     'default:desert_stone_block',
--     { cracky = 2 },
--     { 'default_desert_stone_block.png' },
--     'Desert Stone Block Stair',
--     'Desert Stone Block Slab',
--     default.node_sound_stone_defaults(),
--     true
-- )

-- stairs.register_stair_and_slab(
--     'desert_sandstone',
--     'default:desert_sandstone',
--     { crumbly = 1, cracky = 3 },
--     { 'default_desert_sandstone.png' },
--     'Desert Sandstone Stair',
--     'Desert Sandstone Slab',
--     default.node_sound_stone_defaults(),
--     true
-- )

-- stairs.register_stair_and_slab(
--     'desert_sandstone_brick',
--     'default:desert_sandstone_brick',
--     { cracky = 2 },
--     { 'default_desert_sandstone_brick.png' },
--     'Desert Sandstone Brick Stair',
--     'Desert Sandstone Brick Slab',
--     default.node_sound_stone_defaults(),
--     false
-- )

-- stairs.register_stair_and_slab(
--     'desert_sandstone_block',
--     'default:desert_sandstone_block',
--     { cracky = 2 },
--     { 'default_desert_sandstone_block.png' },
--     'Desert Sandstone Block Stair',
--     'Desert Sandstone Block Slab',
--     default.node_sound_stone_defaults(),
--     true
-- )
