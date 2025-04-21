--[[
    Everness. Never ending discovery in Everness mapgen.
    Copyright (C) 2025 SaKeL

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

--]]

local S = minetest.get_translator(minetest.get_current_modname())

if minetest.global_exists("stairsplus") then


stairsplus:register_all('everness','weeping_obsidian','everness:weeping_obsidian', {
    description = S('Weeping Obsidian'),
    tiles = { 'everness_weeping_obsidian.png' },
    sounds = Everness.node_sound_stone_defaults(),
    groups = {
        -- MTG
        cracky = 1,
        level = 2,
        stone = 1,
        -- MCL
        pickaxey = 5,
        building_block = 1,
        material_stone = 1,
        -- Everness
        everness_obsidian = 1
    },
    _mcl_blast_resistance = 1200,
    _mcl_hardness = 50,
    paramtype = 'light',
    light_source = 7,
})

stairsplus:register_all('everness','blue_weeping_obsidian','everness:blue_weeping_obsidian', {
    description = S('Blue Weeping Obsidian'),
    tiles = { 'everness_blue_weeping_obsidian.png' },
    sounds = Everness.node_sound_stone_defaults(),
    groups = {
        -- MTG
        cracky = 1,
        level = 2,
        stone = 1,
        -- MCL
        pickaxey = 5,
        building_block = 1,
        material_stone = 1,
        -- Everness
        everness_obsidian = 1
    },
    _mcl_blast_resistance = 1200,
    _mcl_hardness = 50,
    paramtype = 'light',
    light_source = 7,
})

stairsplus:register_all('everness','blue_crying_obsidian','everness:blue_crying_obsidian', {
    description = S('Blue Crying Obsidian'),
    tiles = { 'everness_blue_crying_obsidian.png' },
    sounds = Everness.node_sound_stone_defaults(),
    groups = {
        -- MTG
        cracky = 1,
        level = 2,
        stone = 1,
        -- MCL
        pickaxey = 5,
        building_block = 1,
        material_stone = 1,
        -- Everness
        everness_obsidian = 1
    },
    _mcl_blast_resistance = 1200,
    _mcl_hardness = 50,
})

stairsplus:register_all('everness','pyriteblock','everness:pyriteblock', {
    description = S('Pyrite Block'),
    tiles = { 'everness_pyrite_block.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

stairsplus:register_all('everness','pyriteblock_forged','everness:pyriteblock_forged', {
    description = S('Forged Pyrite Block'),
    tiles = { 'everness_pyrite_block_forged.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

stairsplus:register_all('everness','pyrite_lantern','everness:pyrite_lantern', {
    description = S('Pyrite Lantern'),
    drawtype = 'glasslike',
    tiles = { 'everness_pyrite_lantern.png' },
    paramtype = 'light',
    sunlight_propagates = true,
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        oddly_breakable_by_hand = 3,
        lantern = 1,
        -- MCL
        handy = 1,
        building_block = 1,
        material_glass = 1
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_glass_defaults(),
    light_source = 12,
})

stairsplus:register_all('everness','pyriteblock_brick','everness:pyriteblock_brick', {
    description = S('Pyrite Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_pyriteblock_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 4,
        building_block = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 3,
    sounds = Everness.node_sound_metal_defaults(),
})

stairsplus:register_all('everness','coral_tree','everness:coral_tree', {
    description = S('Coral Tree Trunk'),
    short_description = S('Coral Tree Trunk'),
    tiles = { 'everness_coral_tree.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

stairsplus:register_all('everness','coral_tree_bioluminescent','everness:coral_tree_bioluminescent', {
    description = S('Coral Tree Bioluminescent'),
    short_description = S('Coral Tree Bioluminescent'),
    tiles = { 'everness_coral_mushrooms_bioluminescent.png' },
    paramtype = 'light',
    sunlight_propagates = true,
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    light_source = 7
})

stairsplus:register_all('everness','cursed_dream_stone','everness:cursed_dream_stone', {
    description = S('Cursed Dream Stone'),
    short_description = S('Cursed Dream Stone'),
    tiles = { 'everness_cursed_dream_stone.png' },
    paramtype = 'light',
    sunlight_propagates = true,
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
    light_source = 7
})

stairsplus:register_all('everness','baobab_tree','everness:baobab_tree', {
    description = S('Baobab Tree Trunk'),
    short_description = S('Baobab Tree Trunk'),
    tiles = { 'everness_baobab_tree_top.png', 'everness_baobab_tree_top.png', 'everness_baobab_tree_side.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

stairsplus:register_all('everness','sequoia_tree','everness:sequoia_tree', {
    description = S('Sequoia Tree Trunk'),
    short_description = S('Sequoia Tree Trunk'),
    tiles = { 'everness_sequoia_tree_top.png', 'everness_sequoia_tree_top.png', 'everness_sequoia_tree_side.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

stairsplus:register_all('everness','willow_tree','everness:willow_tree', {
    description = S('Willow Tree Trunk'),
    short_description = S('Sequoia Tree Trunk'),
    tiles = { 'everness_willow_tree_top.png', 'everness_willow_tree_top.png', 'everness_willow_tree_side.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

stairsplus:register_all('everness','hollow_tree','everness:hollow_tree', {
    description = S('Hollow Tree Trunk'),
    short_description = S('Hollow Tree Trunk'),
    drawtype = 'nodebox',
    node_box = {
        type = 'fixed',
        fixed = {
            { -0.5000, -0.5000, 0.3125, 0.5000, 0.5000, 0.5000 },
            { 0.3125, -0.5000, -0.5000, 0.5000, 0.5000, 0.5000 },
            { -0.5000, -0.5000, -0.5000, -0.3125, 0.5000, 0.5000 },
            { -0.5000, -0.5000, -0.5000, 0.5000, 0.5000, -0.3125 }
        }
    },
    selection_box = {
        type = 'fixed',
        fixed = { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 }
    },
    tiles = {
        'everness_hollow_tree_top.png',
        'everness_hollow_tree_top.png',
        'everness_hollow_tree_side.png'
    },
    use_texture_alpha = 'clip',
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

stairsplus:register_all('everness','crystal_tree','everness:crystal_tree', {
    description = S('Crystal Tree Trunk'),
    short_description = S('Crystal Tree Trunk'),
    tiles = { 'everness_crystal_tree_top.png', 'everness_crystal_tree_top.png', 'everness_crystal_tree.png' },
    use_texture_alpha = 'blend', -- only needed for stairs API
    paramtype = 'light',
    is_ground_content = false,
    sunlight_propagates = true,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_glass_defaults(),
})

stairsplus:register_all('everness','mese_tree','everness:mese_tree', {
    description = S('Mese Tree Trunk'),
    short_description = S('Mese Tree Trunk'),
    tiles = {
        { name = 'everness_mese_tree_top.png' },
        { name = 'everness_mese_tree_top.png' },
        {
            name = 'everness_mese_tree_side_animated.png',
            align_style = 'world',
            scale = 8,
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 8
            }
        },
    },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = { tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2 },
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

stairsplus:register_all('everness','palm_tree','everness:palm_tree', {
    description = S('Palm') .. ' ' .. S('Tree') .. ' ' .. S('Trunk'),
    short_description = S('Palm') .. ' ' .. S('Tree') .. ' ' .. S('Trunk'),
    tiles = { 'everness_palm_tree_top.png', 'everness_palm_tree_top.png', 'everness_palm_tree_side.png' },
    paramtype2 = 'facedir',
    use_texture_alpha = 'blend', -- only needed for stairs API
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

stairsplus:register_all('everness','icecobble','everness:icecobble', {
    description = 'Ice Cobble',
    tiles = { 'everness_icecobble.png' },
    groups = {
        -- MTG
        puts_out_fire = 1,
        cools_lava = 1,
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_ice_defaults(),
    is_ground_content = false,
})

stairsplus:register_all('everness','snowcobble','everness:snowcobble', {
    description = 'Snow Cobble',
    tiles = { 'everness_snowcobble.png' },
    groups = {
        -- MTG
        puts_out_fire = 1,
        cools_lava = 1,
        snowy = 1,
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_snow_defaults(),
    is_ground_content = false,
})

stairsplus:register_all('everness','ancient_emerald_ice','everness:ancient_emerald_ice', {
    description = S('Ancient Emerald Ice'),
    tiles = { 'everness_ancient_emerald_ice.png' },
    paramtype = 'light',
    groups = {
        -- MTG
        cracky = 3,
        cools_lava = 1,
        -- MCL
        handy = 1,
        pickaxey = 1,
        building_block = 1,
        ice = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_ice_defaults(),
})

stairsplus:register_all('everness','dense_emerald_ice','everness:dense_emerald_ice', {
    description = S('Dense Emerald Ice'),
    tiles = { 'everness_dense_emerald_ice.png' },
    paramtype = 'light',
    groups = {
        -- MTG
        cracky = 3,
        cools_lava = 1,
        -- MCL
        handy = 1,
        pickaxey = 1,
        building_block = 1,
        ice = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_ice_defaults(),
})

stairsplus:register_all('everness','emerald_ice','everness:emerald_ice', {
    description = S('Emerald Ice'),
    tiles = { 'everness_emerald_ice.png' },
    paramtype = 'light',
    groups = {
        -- MTG
        cracky = 3,
        cools_lava = 1,
        -- MCL
        handy = 1,
        pickaxey = 1,
        building_block = 1,
        ice = 1,
    },
    _mcl_blast_resistance = 0.5,
    _mcl_hardness = 0.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_ice_defaults(),
})

stairsplus:register_all('everness','coral_desert_stone','everness:coral_desert_stone', {
    description = S('Coral Desert Stone'),
    tiles = { 'everness_coral_desert_stone.png' },
    drop = 'everness:coral_desert_cobble',
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_desert_cobble','everness:coral_desert_cobble', {
    description = S('Coral Desert Cobblestone'),
    tiles = { 'everness_coral_desert_cobble.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_desert_mossy_cobble','everness:coral_desert_mossy_cobble', {
    description = S('Coral Mossy Cobblestone'),
    tiles = { 'everness_coral_desert_mossy_cobble.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','cursed_brick','everness:cursed_brick', {
    description = S('Cursed Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_cursed_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','cursed_brick_with_growth','everness:cursed_brick_with_growth', {
    description = S('Cursed Brick with Growth'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_cursed_brick_with_growth.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','cursed_sandstone_block','everness:cursed_sandstone_block', {
    description = S('Cursed Sandstone Block'),
    tiles = { 'everness_cursed_sandstone_block.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','cursed_sandstone_brick','everness:cursed_sandstone_brick', {
    description = S('Cursed Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_cursed_sandstone_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','cursed_stone_carved','everness:cursed_stone_carved', {
    description = S('Cursed Stone Carved'),
    tiles = {
        {
            name = 'everness_cursed_stone_carved.png',
            align_style = 'world',
            scale = 2
        }
    },
    drop = 'everness:cursed_stone',
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults()
})

stairsplus:register_all('everness','quartz_block','everness:quartz_block', {
    description = S('Quartz Block'),
    -- Textures of node; +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        'everness_quartz_block_top.png',
        'everness_quartz_block_bottom.png',
        'everness_quartz_block_side.png',
    },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        quartz_block = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','quartz_chiseled','everness:quartz_chiseled', {
    description = S('Chiseled Quartz'),
    tiles = {
        'everness_quartz_block_chiseled_top.png',
        'everness_quartz_block_chiseled_top.png',
        'everness_quartz_block_chiseled.png',
    },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        quartz_block = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

-- Quartz Pillar
stairsplus:register_all('everness','quartz_pillar','everness:quartz_pillar', {
    description = S('Quartz Pillar'),
    paramtype2 = 'facedir',
    tiles = {
        'everness_quartz_block_lines_top.png',
        'everness_quartz_block_lines_top.png',
        'everness_quartz_block_lines.png',
    },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        quartz_block = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
    on_place = minetest.rotate_node
})

stairsplus:register_all('everness','dry_wood','everness:dry_wood', {
    description = S('Dry Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_dry_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

stairsplus:register_all('everness','dry_tree','everness:dry_tree', {
    description = S('Dry Tree Trunk'),
    short_description = S('Dry Tree Trunk'),
    tiles = { 'everness_dry_tree_top.png', 'everness_dry_tree_top.png', 'everness_dry_tree.png' },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node,
})

stairsplus:register_all('everness','coral_wood','everness:coral_wood', {
    description = S('Coral Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_coral_wood.png' },
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

stairsplus:register_all('everness','bamboo_wood','everness:bamboo_wood', {
    description = S('Bamboo Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_dry_bamboo_block_side.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        building_block = 1,
        material_wood = 1,
        -- ALL
        flammable = 2,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

stairsplus:register_all('everness','bamboo_mosaic_wood','everness:bamboo_mosaic_wood', {
    description = S('Bamboo Mosaic'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_bamboo_mosaic.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 2,
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 2,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

stairsplus:register_all('everness','forsaken_desert_brick','everness:forsaken_desert_brick', {
    description = S('Forsaken Desert Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_forsaken_desert_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','forsaken_desert_brick_red','everness:forsaken_desert_brick_red', {
    description = S('Forsaken Desert Brick Red'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_forsaken_desert_brick_red.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','forsaken_desert_chiseled_stone','everness:forsaken_desert_chiseled_stone', {
    description = S('Forsaken Desert Chiseled Stone'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = {
        'everness_forsaken_desert_chiseled_stone_top.png',
        'everness_forsaken_desert_chiseled_stone_bottom.png',
        'everness_forsaken_desert_chiseled_stone_side.png'
    },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','forsaken_desert_engraved_stone','everness:forsaken_desert_engraved_stone', {
    description = S('Forsaken Desert Engraved Stone'),
    tiles = { 'everness_forsaken_desert_engraved_stone.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','forsaken_desert_cobble_red','everness:forsaken_desert_cobble_red', {
    description = S('Forsaken Desert Cobblestone Red'),
    tiles = { 'everness_forsaken_desert_cobble_red.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','forsaken_desert_cobble','everness:forsaken_desert_cobble', {
    description = S('Forsaken Desert Cobblestone'),
    tiles = { 'everness_forsaken_desert_cobble.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','baobab_wood','everness:baobab_wood', {
    description = S('Baobab Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_baobab_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

stairsplus:register_all('everness','sequoia_wood','everness:sequoia_wood', {
    description = S('Sequoia Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_sequoia_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

stairsplus:register_all('everness','forsaken_tundra_cobble','everness:forsaken_tundra_cobble', {
    description = S('Forsaken Tundra Cobblestone'),
    tiles = { 'everness_forsaken_tundra_cobblestone.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','forsaken_tundra_stone','everness:forsaken_tundra_stone', {
    description = S('Forsaken Tundra Stone'),
    tiles = { 'everness_forsaken_tundra_stone.png' },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    drop = 'everness:forsaken_tundra_cobble',
    legacy_mineral = true,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','forsaken_tundra_brick','everness:forsaken_tundra_brick', {
    description = S('Forsaken Tundra Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_forsaken_tundra_brick.png' },
    is_ground_content = false,
    groups = {
        cracky = 2,
        -- MCL
        pickaxey = 1,
        stonebrick = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','willow_wood','everness:willow_wood', {
    description = S('Willow Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_willow_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

stairsplus:register_all('everness','crystal_wood','everness:crystal_wood', {
    description = S('Crystal Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_crystal_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

stairsplus:register_all('everness','mese_wood','everness:mese_wood', {
    description = S('Mese Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_mese_wood.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

stairsplus:register_all('everness','magmacobble','everness:magmacobble', {
    description = 'Magma Cobblestone',
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
    tiles = {
        {
            name = 'everness_magmacobble_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
        },
    },
    special_tiles = {
        -- New-style lava source material (mostly unused)
        {
            name = 'everness_magmacobble_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
            backface_culling = false,
        },
    },
    paramtype = 'light',
    light_source = 3,
})

stairsplus:register_all('everness','volcanic_rock','everness:volcanic_rock', {
    description = S('Volcanic Rock'),
    tiles = { 'everness_volcanic_rock.png' },
    sounds = Everness.node_sound_stone_defaults(),
    groups = {
        -- MTG
        cracky = 1,
        level = 2,
        stone = 1,
        -- MCL
        pickaxey = 5,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 1200,
    _mcl_hardness = 50,
    is_ground_content = false,
})

stairsplus:register_all('everness', 'volcanic_rock_with_magma', 'everness:volcanic_rock_with_magma', {
    description = S('Volcanic Rock with Magma'),
    tiles = {
        {
            name = 'everness_volcanic_rock_with_magma_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
        },
    },
    sounds = Everness.node_sound_stone_defaults(),
    groups = {
        -- MTG
        cracky = 1,
        level = 2,
        stone = 1,
        -- MCL
        pickaxey = 5,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 1200,
    _mcl_hardness = 50,
    paramtype = 'light',
    light_source = 3,
})

stairsplus:register_all('everness','coral_deep_ocean_sandstone_block','everness:coral_deep_ocean_sandstone_block', {
    description = S('Coral Deep Ocean Sandstone Block'),
    tiles = { 'everness_deep_ocean_sandstone_block.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_deep_ocean_sandstone_brick','everness:coral_deep_ocean_sandstone_brick', {
    description = S('Coral Deep Ocean Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_deep_ocean_sandstone_brick.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','cursed_lands_deep_ocean_sandstone_brick','everness:cursed_lands_deep_ocean_sandstone_brick', {
    description = S('Cursed Lands Deep Ocean Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_cursed_lands_deep_ocean_sand_brick.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_white_sandstone','everness:coral_white_sandstone', {
    description = S('Coral White Sandstone'),
    tiles = { 'everness_coral_white_sandstone.png' },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_white_sandstone_brick','everness:coral_white_sandstone_brick', {
    description = S('Coral White Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_coral_white_sandstone_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_white_sandstone_pillar','everness:coral_white_sandstone_pillar', {
    description = S('Coral White Sandstone Pillar'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = {
        'everness_coral_white_sandstone.png',
        'everness_coral_white_sandstone.png',
        'everness_coral_white_sandstone_pillar.png',
    },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_desert_stone_block','everness:coral_desert_stone_block', {
    description = S('Coral Desert Stone Block'),
    tiles = { 'everness_coral_desert_stone_block.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})


stairsplus:register_all('everness','coral_desert_stone_brick','everness:coral_desert_stone_brick', {
    description = S('Coral Desert Stone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_coral_desert_stone_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_sandstone','everness:coral_sandstone', {
    description = S('Coral Sandstone'),
    tiles = { 'everness_coral_sandstone.png' },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1,
        -- Everness
        everness_sandstone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_sandstone_brick','everness:coral_sandstone_brick', {
    description = S('Coral Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_coral_sandstone_brick.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_sandstone_chiseled','everness:coral_sandstone_chiseled', {
    description = S('Coral Sandstone Chiseled Block'),
    tiles = { 'everness_coral_sandstone_chiseled.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_sandstone_carved_1','everness:coral_sandstone_carved_1', {
    description = S('Coral Sandstone Carved Block'),
    tiles = { 'everness_coral_sandstone_carved_1.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','cursed_lands_deep_ocean_sandstone_block','everness:cursed_lands_deep_ocean_sandstone_block', {
    description = S('Cursed Lands Deep Ocean Sandstone Block'),
    tiles = { 'everness_cursed_lands_deep_ocean_sandblock.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','crystal_forest_deep_ocean_sandstone_block','everness:crystal_forest_deep_ocean_sandstone_block', {
    description = S('Crystal Forest Deep Ocean Sandstone Block'),
    tiles = { 'everness_crystal_forest_deep_ocean_sandstone_block.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','crystal_forest_deep_ocean_sandstone_brick','everness:crystal_forest_deep_ocean_sandstone_brick', {
    description = S('Crystal Forest Deep Ocean Sandstone Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_crystal_forest_deep_ocean_sandstone_brick.png' },
    groups = {
        -- MTG
        cracky = 2,
        stone = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','crystal_cobble','everness:crystal_cobble', {
    description = S('Crystal Cobblestone'),
    tiles = { 'everness_crystal_cobble.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','crystal_mossy_cobble','everness:crystal_mossy_cobble', {
    description = S('Crystal Mossy Cobblestone'),
    tiles = { 'everness_crystal_mossy_cobble.png' },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','crystal_stone_brick','everness:crystal_stone_brick', {
    description = S('Crystal Stone Brick'),
    paramtype2 = 'facedir',
    drawtype = 'allfaces',
    place_param2 = 0,
    tiles = { 'everness_crystal_stone_brick.png' },
    use_texture_alpha = 'blend',
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','glass','everness:glass', {
    description = S('Everness Glass'),
    drawtype = 'glasslike_framed_optional',
    tiles = { 'everness_glass.png', 'everness_glass_detail.png' },
    use_texture_alpha = 'clip', -- only needed for stairs API
    paramtype = 'light',
    sunlight_propagates = true,
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        oddly_breakable_by_hand = 3,
        glass = 1,
        -- MCL
        handy = 1,
        building_block = 1,
        material_glass = 1
    },
    _mcl_blast_resistance = 0.3,
    _mcl_hardness = 0.3,
    sounds = Everness.node_sound_glass_defaults(),
})

stairsplus:register_all('everness','coral_bones_block','everness:coral_bones_block', {
    description = S('Coral Bones Block'),
    tiles = { 'everness_coral_bones_block.png' },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','coral_bones_brick','everness:coral_bones_brick', {
    description = S('Coral Bones Brick'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = { 'everness_coral_bones_brick.png' },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_hardness = 1.5,
    _mcl_blast_resistance = 6,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_stone','everness:mineral_stone', {
    description = S('Mineral') .. ' ' .. S('Stone'),
    tiles = {
        {
            name = 'everness_mineral_stone.png',
            align_style = 'world',
            scale = 2
        }
    },
    drop = 'everness:mineral_stone_cobble',
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_stone_cobble','everness:mineral_stone_cobble', {
    description = S('Mineral') .. ' ' .. S('Cobblestone'),
    tiles = {
        {
            name = 'everness_mineral_cobblestone.png',
            align_style = 'world',
            scale = 2
        }
    },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 3,
        stone = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        cobble = 1
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_stone_block','everness:mineral_stone_block', {
    description = S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Block'),
    tiles = {
        {
            name = 'everness_mineral_stone_block.png',
            align_style = 'world',
            scale = 2
        }
    },
    is_ground_content = false,
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_stone_brick','everness:mineral_stone_brick', {
    description = S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Brick'),
    paramtype2 = 'facedir',
    is_ground_content = false,
    place_param2 = 0,
    tiles = {
        {
            name = 'everness_mineral_stone_brick.png',
            align_style = 'world',
            scale = 2
        }
    },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = false,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_sandstone','everness:mineral_sandstone', {
    description = S('Mineral') .. ' ' .. S('Sandstone'),
    tiles = { 'everness_mineral_sandstone.png' },
    groups = {
        -- MTG
        cracky = 3,
        crumbly = 1,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
        -- Everness
        everness_sandstone = 1
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_sandstone_block','everness:mineral_sandstone_block', {
    description = S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Block'),
    tiles = {
        {
            name = 'everness_mineral_sandstone_block.png',
            align_style = 'world',
            scale = 2
        }
    },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        sandstone = 1,
        normal_sandstone = 1,
        building_block = 1,
        material_stone = 1,
    },
    _mcl_blast_resistance = 0.8,
    _mcl_hardness = 0.8,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_stone_brick_with_growth','everness:mineral_stone_brick_with_growth', {
    description = S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Brick') .. ' ' .. S('with Growth'),
    paramtype2 = 'facedir',
    is_ground_content = false,
    place_param2 = 0,
    tiles = {
        {
            name = 'everness_mineral_stone_brick_with_growth.png',
            align_style = 'world',
            scale = 2
        }
    },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = false,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_stone_brick_with_flower_growth','everness:mineral_stone_brick_with_flower_growth', {
    description = S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Brick') .. ' ' .. S('with Flower Growth'),
    paramtype2 = 'facedir',
    is_ground_content = false,
    place_param2 = 0,
    tiles = {
        {
            name = 'everness_mineral_stone_brick_with_flower_growth.png',
            align_style = 'world',
            scale = 2
        }
    },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = false,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_sandstone_brick','everness:mineral_sandstone_brick', {
    description = S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Brick'),
    paramtype2 = 'facedir',
    is_ground_content = false,
    place_param2 = 0,
    tiles = {
        {
            name = 'everness_mineral_sandstone_brick.png',
            align_style = 'world',
            scale = 2
        }
    },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = false,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_sandstone_brick_block','everness:mineral_sandstone_brick_block', {
    description = S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Brick') .. ' ' .. S('Block'),
    paramtype2 = 'facedir',
    is_ground_content = false,
    place_param2 = 0,
    tiles = {
        { name = 'everness_mineral_sandstone_brick_block_top.png' },
        { name = 'everness_mineral_sandstone_brick_block_top.png' },
        {
            name = 'everness_mineral_sandstone_brick_block.png',
            align_style = 'world',
            scale = 2
        }
    },
    groups = {
        -- MTG
        cracky = 2,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = false,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','palm_tree_wood','everness:palm_tree_wood', {
    description = S('Palm') .. ' ' .. S('Tree') .. ' ' .. S('Wood') .. ' ' .. S('Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = {
        {
            name = 'everness_palm_tree_wood.png',
            align_style = 'world',
            scale = 2
        }
    },
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

stairsplus:register_all('everness','mineral_cave_stone','everness:mineral_cave_stone', {
    description = S('Mineral Cave Stone'),
    tiles = {
        {
            name = 'everness_mineral_stone_under_top.png',
            align_style = 'world',
            scale = 2
        },
        {
            name = 'everness_mineral_stone_under_top.png',
            align_style = 'world',
            scale = 2
        },
        {
            name = 'everness_mineral_stone_under.png',
            align_style = 'world',
            scale = 2
        }
    },
    drop = 'everness:mineral_cave_cobblestone',
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_cave_cobblestone','everness:mineral_cave_cobblestone', {
    description = S('Mineral Cave Cobblestone'),
    is_ground_content = false,
    tiles = {
        {
            name = 'everness_mineral_cobblestone_under.png',
            align_style = 'world',
            scale = 2
        }
    },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 2,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_lava_stone','everness:mineral_lava_stone', {
    description = S('Mineral Lava Stone with lava'),
    is_ground_content = false,
    -- Textures of node; +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        {
            name = 'everness_mineral_lava_stone_animated.png',
            align_style = 'world',
            scale = 2,
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 6.4,
            },
        },
        {
            name = 'everness_mineral_lava_stone_bottom.png',
            align_style = 'world',
            scale = 2
        },
        {
            name = 'everness_mineral_lava_stone_side.png',
            align_style = 'world',
            scale = 2
        }
    },
    drop = 'everness:mineral_lava_stone_dry',
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    light_source = 3,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','mineral_lava_stone_dry','everness:mineral_lava_stone_dry', {
    description = S('Mineral Lava Stone without lava'),
    is_ground_content = false,
    -- Textures of node; +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        {
            name = 'everness_mineral_lava_stone_bottom.png',
            align_style = 'world',
            scale = 2
        }
    },
    groups = {
        -- MTG
        cracky = 3,
        -- MCL
        pickaxey = 1,
        building_block = 1,
        material_stone = 1,
        -- ALL
        stone = 1,
    },
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1.5,
    _mcl_silk_touch_drop = true,
    sounds = Everness.node_sound_stone_defaults(),
})

stairsplus:register_all('everness','lava_tree','everness:lava_tree', {
    description = S('Lava Tree Trunk'),
    short_description = S('Lava Tree Trunk'),
    tiles = {
        { name = 'everness_lava_tree_top.png' },
        { name = 'everness_lava_tree_top.png' },
        {
            name = 'everness_lava_tree.png',
            align_style = 'world',
            scale = 2,
        },
    },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node
})

stairsplus:register_all('everness','lava_tree_with_lava','everness:lava_tree_with_lava', {
    description = S('Lava Tree Trunk with Lava Veins'),
    short_description = S('Lava Tree Trunk with Lava Veins'),
    tiles = {
        { name = 'everness_lava_tree_top.png' },
        { name = 'everness_lava_tree_top.png' },
        {
            name = 'everness_lava_tree_animated.png',
            align_style = 'world',
            scale = 8,
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 8,
            },
        },
    },
    paramtype2 = 'facedir',
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 2,
        oddly_breakable_by_hand = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 5,
        -- ALL
        tree = 1,
        flammable = 2,
    },
    _mcl_blast_resistance = 2,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
    on_place = minetest.rotate_node,
    light_source = 3,
})

stairsplus:register_all('everness','lava_tree_wood','everness:lava_tree_wood', {
    description = S('Lava Tree Wood Planks'),
    paramtype2 = 'facedir',
    place_param2 = 0,
    tiles = {
        {
            name = 'everness_lava_tree_wood.png',
            align_style = 'world',
            scale = 2
        },
    },
    is_ground_content = false,
    groups = {
        -- MTG
        choppy = 3,
        oddly_breakable_by_hand = 2,
        -- Everness
        everness_wood = 1,
        -- MCL
        handy = 1,
        axey = 1,
        building_block = 1,
        material_wood = 1,
        fire_encouragement = 5,
        fire_flammability = 20,
        -- ALL
        flammable = 3,
        wood = 1,
    },
    _mcl_blast_resistance = 3,
    _mcl_hardness = 2,
    sounds = Everness.node_sound_wood_defaults(),
})

core.register_alias("stairs:slab_cursed_brick_with_growth", "everness:slab_cursed_brick_with_growth")
core.register_alias("stairs:slab_cursed_lands_deep_ocean_sandstone_block", "everness:slab_cursed_lands_deep_ocean_sandstone_block")
core.register_alias("stairs:stair_mineral_lava_stone", "everness:stair_mineral_lava_stone")
core.register_alias("stairs:stair_outer_mineral_lava_stone", "everness:stair_mineral_lava_stone_outer")
core.register_alias("stairs:stair_palm_tree_wood", "everness:stair_palm_tree_wood")
core.register_alias("stairs:slab_coral_desert_stone_brick", "everness:slab_coral_desert_stone_brick")
core.register_alias("stairs:slab_forsaken_tundra_brick", "everness:slab_forsaken_tundra_brick")
core.register_alias("stairs:slab_baobab_wood", "everness:slab_baobab_wood")
core.register_alias("stairs:stair_baobab_wood", "everness:stair_baobab_wood")
core.register_alias("stairs:stair_bamboo_mosaic_wood", "everness:stair_bamboo_mosaic_wood")
core.register_alias("stairs:stair_bamboo_wood", "everness:stair_bamboo_wood")
core.register_alias("stairs:stair_outer_forsaken_tundra_brick", "everness:stair_forsaken_tundra_brick_outer")
core.register_alias("stairs:stair_outer_forsaken_tundra_stone", "everness:stair_forsaken_tundra_stone_outer")
core.register_alias("stairs:stair_forsaken_tundra_brick", "everness:stair_forsaken_tundra_brick")
core.register_alias("stairs:stair_coral_deep_ocean_sandstone_brick", "everness:stair_coral_deep_ocean_sandstone_brick")
core.register_alias("stairs:slab_coral_deep_ocean_sandstone_brick", "everness:slab_coral_deep_ocean_sandstone_brick")
core.register_alias("stairs:stair_coral_deep_ocean_sandstone_block", "everness:stair_coral_deep_ocean_sandstone_block")
core.register_alias("stairs:slab_coral_deep_ocean_sandstone_block", "everness:slab_coral_deep_ocean_sandstone_block")
core.register_alias("stairs:stair_coral_wood", "everness:stair_coral_wood")
core.register_alias("stairs:slab_coral_wood", "everness:slab_coral_wood")
core.register_alias("stairs:stair_coral_white_sandstone", "everness:stair_coral_white_sandstone")
core.register_alias("stairs:slab_coral_white_sandstone", "everness:slab_coral_white_sandstone")
core.register_alias("stairs:stair_coral_sandstone_brick", "everness:stair_coral_sandstone_brick")
core.register_alias("stairs:slab_coral_sandstone_brick", "everness:slab_coral_sandstone_brick")
core.register_alias("stairs:stair_coral_desert_stone_block", "everness:stair_coral_desert_stone_block")
core.register_alias("stairs:stair_crystal_forest_deep_ocean_sandstone_brick", "everness:stair_crystal_forest_deep_ocean_sandstone_brick")
core.register_alias("stairs:stair_crystal_forest_deep_ocean_sandstone_block", "everness:stair_crystal_forest_deep_ocean_sandstone_block")
core.register_alias("stairs:slab_crystal_forest_deep_ocean_sandstone_brick", "everness:slab_crystal_forest_deep_ocean_sandstone_brick")
core.register_alias("stairs:slab_crystal_forest_deep_ocean_sandstone_block", "everness:slab_crystal_forest_deep_ocean_sandstone_block")
core.register_alias("stairs:stair_outer_mineral_sandstone_block", "everness:stair_outer_mineral_sandstone_block")
core.register_alias("stairs:stair_inner_mineral_sandstone_block", "everness:stair_inner_mineral_sandstone_block")
core.register_alias("stairs:stair_forsaken_desert_cobble", "everness:stair_forsaken_desert_cobble")
core.register_alias("stairs:slab_forsaken_desert_chiseled_stone", "everness:slab_forsaken_desert_chiseled_stone")
core.register_alias("stairs:slab_volcanic_rock", "everness:slab_volcanic_rock")
core.register_alias("stairs:stair_coral_desert_stone", "everness:stair_coral_desert_stone")
core.register_alias("stairs:stair_forsaken_desert_brick", "everness:stair_forsaken_desert_brick")
core.register_alias("stairs:stair_quartz_block", "everness:stair_quartz_block")
core.register_alias("stairs:stair_quartz_chiseled", "everness:stair_quartz_chiseled")
core.register_alias("stairs:stair_quartz_pillar", "everness:stair_quartz_pillar")
core.register_alias("stairs:slab_quartz_block", "everness:slab_quartz_block")
core.register_alias("stairs:slab_quartz_chiseled", "everness:slab_quartz_chiseled")
core.register_alias("stairs:slab_quartz_pillar", "everness:slab_quartz_pillar")
core.register_alias("stairs:slab_crystal_wood", "everness:slab_crystal_wood")
core.register_alias("stairs:stair_crystal_wood", "everness:stair_crystal_wood")
core.register_alias("stairs:stair_inner_magmacobble", "everness:stair_magmacobble_inner")
core.register_alias("stairs:stair_outer_coral_desert_stone_brick", "everness:stair_coral_desert_stone_brick_outer")
core.register_alias("stairs:stair_forsaken_desert_chiseled_stone", "everness:stair_forsaken_desert_chiseled_stone")
core.register_alias("stairs:slab_forsaken_desert_brick", "everness:slab_forsaken_desert_brick")
core.register_alias("stairs:stair_forsaken_desert_brick_red", "everness:stair_forsaken_desert_brick_red")
core.register_alias("stairs:stair_forsaken_tundra_cobble", "everness:stair_forsaken_tundra_cobble")
core.register_alias("stairs:stair_inner_bamboo_mosaic_wood", "everness:stair_bamboo_mosaic_wood_inner")
core.register_alias("stairs:stair_outer_quartz_chiseled", "everness:stair_quartz_chiseled_outer")
core.register_alias("stairs:stair_inner_quartz_chiseled", "everness:stair_quartz_chiseled_inner")
core.register_alias("stairs:stair_crystal_mossy_cobble", "everness:stair_crystal_mossy_cobble")
core.register_alias("stairs:stair_dry_tree", "everness:stair_dry_tree")
core.register_alias("stairs:stair_cursed_brick_with_growth", "everness:stair_cursed_brick_with_growth")
core.register_alias("stairs:stair_cursed_sandstone_block", "everness:stair_cursed_sandstone_block")
core.register_alias("stairs:slab_dry_tree", "everness:slab_dry_tree")
core.register_alias("stairs:stair_dry_wood", "everness:stair_dry_wood")
core.register_alias("stairs:slab_dry_wood", "everness:slab_dry_wood")
core.register_alias("stairs:slab_cursed_brick", "everness:slab_cursed_brick")
core.register_alias("stairs:slab_palm_tree_wood", "everness:slab_palm_tree_wood")
core.register_alias("stairs:stair_mineral_sandstone_brick", "everness:stair_mineral_sandstone_brick")
core.register_alias("stairs:slab_mineral_sandstone_brick", "slab_mineral_sandstone_brick")

else

stairs.register_stair_and_slab(
    'coral_desert_stone',
    'everness:coral_desert_stone',
    { cracky = 3 },
    { 'everness_coral_desert_stone.png' },
    'Coral Desert Stone Stair',
    'Coral Desert Stone Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_desert_cobble',
    'everness:coral_desert_cobble',
    { cracky = 3 },
    { 'everness_coral_desert_cobble.png' },
    'Coral Desert Cobblestone Stair',
    'Coral Desert Cobblestone Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_desert_mossy_cobble',
    'everness:coral_desert_mossy_cobble',
    { cracky = 3 },
    { 'everness_coral_desert_mossy_cobble.png' },
    'Coral Mossy Cobblestone Stair',
    'Coral Mossy Cobblestone Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_brick',
    'everness:cursed_brick',
    { cracky = 2 },
    { 'everness_cursed_brick.png' },
    'Cursed Brick Stair',
    'Cursed Brick Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_brick_with_growth',
    'everness:cursed_brick_with_growth',
    { cracky = 2 },
    { 'everness_cursed_brick_with_growth.png' },
    'Cursed Brick with Growth Stair',
    'Cursed Brick with Growth Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_sandstone_block',
    'everness:cursed_sandstone_block',
    { cracky = 2 },
    { 'everness_cursed_sandstone_block.png' },
    'Cursed Sandstone Block Stair',
    'Cursed Sandstone Block Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_sandstone_brick',
    'everness:cursed_sandstone_brick',
    { cracky = 2 },
    { 'everness_cursed_sandstone_brick.png' },
    'Cursed Sandstone Brick Stair',
    'Cursed Sandstone Brick Slab',
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_stone_carved',
    'everness:cursed_stone_carved',
    { cracky = 2 },
    {
        {
            name = 'everness_cursed_stone_carved.png',
            align_style = 'world',
            scale = 2
        }
    },
    'Cursed Stone Carved Stair',
    'Cursed Stone Carved Slab',
    Everness.node_sound_stone_defaults(),
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
    Everness.node_sound_stone_defaults(),
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
    Everness.node_sound_stone_defaults(),
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
    Everness.node_sound_stone_defaults(),
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
    Everness.node_sound_wood_defaults(),
    true
)

stairs.register_stair_and_slab(
    'dry_tree',
    'everness:dry_tree',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_dry_tree_top.png', 'everness_dry_tree_top.png', 'everness_dry_tree.png' },
    S('Dry Tree Trunk Stair'),
    S('Dry Tree Trunk Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Coral Wood

stairs.register_stair_and_slab(
    'coral_wood',
    'everness:coral_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 3 },
    { 'everness_coral_wood.png' },
    S('Coral Wood Stair'),
    S('Coral Wood Slab'),
    Everness.node_sound_wood_defaults(),
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
    Everness.node_sound_wood_defaults(),
    true
)

stairs.register_stair_and_slab(
    'bamboo_mosaic_wood',
    'everness:bamboo_mosaic_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_bamboo_mosaic.png' },
    S('Bamboo Mosaic Wood Stair'),
    S('Bamboo Mosaic Wood Slab'),
    Everness.node_sound_wood_defaults(),
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
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_desert_brick_red',
    'everness:forsaken_desert_brick_red',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_brick_red.png' },
    S('Forsaken Desert Brick Red Stair'),
    S('Forsaken Desert Brick Red Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_desert_chiseled_stone',
    'everness:forsaken_desert_chiseled_stone',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_chiseled_stone_side.png' },
    S('Forsaken Desert Chiseled Stone Stair'),
    S('Forsaken Desert Chiseled Stone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_desert_engraved_stone',
    'everness:forsaken_desert_engraved_stone',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_engraved_stone.png' },
    S('Forsaken Desert Engraved Stone Stair'),
    S('Forsaken Desert Engraved Stone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_desert_cobble',
    'everness:forsaken_desert_cobble',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_cobble.png' },
    S('Forsaken Desert Cobblestone Stair'),
    S('Forsaken Desert Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_desert_cobble_red',
    'everness:forsaken_desert_cobble_red',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_desert_cobble_red.png' },
    S('Forsaken Desert Cobblestone Red Stair'),
    S('Forsaken Desert Cobblestone Red Slab'),
    Everness.node_sound_stone_defaults(),
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
    Everness.node_sound_wood_defaults(),
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
    Everness.node_sound_wood_defaults(),
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
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_tundra_stone',
    'everness:forsaken_tundra_stone',
    { cracky = 3, stone = 1 },
    { 'everness_forsaken_tundra_stone.png' },
    S('Forsaken Tundra Stone Stair'),
    S('Forsaken Tundra Stone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'forsaken_tundra_brick',
    'everness:forsaken_tundra_brick',
    { cracky = 2, stone = 1 },
    { 'everness_forsaken_tundra_brick.png' },
    S('Forsaken Tundra Brick Stair'),
    S('Forsaken Tundra Brick Slab'),
    Everness.node_sound_stone_defaults(),
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
    Everness.node_sound_wood_defaults(),
    true
)

-- Crystal Wood

stairs.register_stair_and_slab(
    'crystal_wood',
    'everness:crystal_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_crystal_wood.png' },
    S('Crystal Wood Stair'),
    S('Crystal Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Mese Wood

stairs.register_stair_and_slab(
    'mese_wood',
    'everness:mese_wood',
    { choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
    { 'everness_mese_wood.png' },
    S('Mese Wood Stair'),
    S('Mese Wood Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Magma Cobble

stairs.register_stair_and_slab(
    'magmacobble',
    'everness:magmacobble',
    { cracky = 3, stone = 1 },
    {
        {
            name = 'everness_magmacobble_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
        }
    },
    S('Magma Cobblestone Stair'),
    S('Magma Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Volcanic rock

stairs.register_stair_and_slab(
    'volcanic_rock',
    'everness:volcanic_rock',
    { cracky = 1, stone = 2 },
    { 'everness_volcanic_rock.png' },
    S('Volcanic Rock Stair'),
    S('Volcanic Rock Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'volcanic_rock_with_magma',
    'everness:volcanic_rock_with_magma',
    { cracky = 1, stone = 2 },
    {
        {
            name = 'everness_volcanic_rock_with_magma_animated.png',
            animation = {
                type = 'vertical_frames',
                aspect_w = 16,
                aspect_h = 16,
                length = 3.0,
            },
        },
    },
    S('Volcanic Rock with Magma Stair'),
    S('Volcanic Rock with Magma Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Coral Forest Deep Ocean

stairs.register_stair_and_slab(
    'coral_deep_ocean_sandstone_block',
    'everness:coral_deep_ocean_sandstone_block',
    { cracky = 2 },
    { 'everness_deep_ocean_sandstone_block.png' },
    S('Coral Depp Ocean Sandstone Block Stair'),
    S('Coral Depp Ocean Sandstone Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_deep_ocean_sandstone_brick',
    'everness:coral_deep_ocean_sandstone_brick',
    { cracky = 2 },
    { 'everness_deep_ocean_sandstone_brick.png' },
    S('Coral Depp Ocean Sandstone Brick Stair'),
    S('Coral Depp Ocean Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Coral White Sandstone

stairs.register_stair_and_slab(
    'coral_white_sandstone',
    'everness:coral_white_sandstone',
    { cracky = 2 },
    { 'everness_coral_white_sandstone.png' },
    S('Coral White Sandstone Stair'),
    S('Coral White Sandstone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_white_sandstone_pillar',
    'everness:coral_white_sandstone_pillar',
    { cracky = 2 },
    {
        'everness_coral_white_sandstone.png',
        'everness_coral_white_sandstone.png',
        'everness_coral_white_sandstone_pillar.png',
    },
    S('Coral White Sandstone Pillar Stair'),
    S('Coral White Sandstone Pillar Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_white_sandstone_brick',
    'everness:coral_white_sandstone_brick',
    { cracky = 2 },
    { 'everness_coral_white_sandstone_brick.png' },
    S('Coral White Sandstone Brick Stair'),
    S('Coral White Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Coral Desert Stone

stairs.register_stair_and_slab(
    'coral_desert_stone_block',
    'everness:coral_desert_stone_block',
    { cracky = 2 },
    { 'everness_coral_desert_stone_block.png' },
    S('Coral Desert Stone Block Stair'),
    S('Coral Desert Stone Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_desert_stone_brick',
    'everness:coral_desert_stone_brick',
    { cracky = 2 },
    { 'everness_coral_desert_stone_brick.png' },
    S('Coral Desert Stone Brick Stair'),
    S('Coral Desert Stone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Coral Sandstone

stairs.register_stair_and_slab(
    'coral_sandstone',
    'everness:coral_sandstone',
    { cracky = 2 },
    { 'everness_coral_sandstone.png' },
    S('Coral Sandstone Stair'),
    S('Coral Sandstone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_sandstone_brick',
    'everness:coral_sandstone_brick',
    { cracky = 2 },
    { 'everness_coral_sandstone_brick.png' },
    S('Coral Sandstone Brick Stair'),
    S('Coral Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_sandstone_chiseled',
    'everness:coral_sandstone_chiseled',
    { cracky = 2 },
    { 'everness_coral_sandstone_chiseled.png' },
    S('Coral Sandstone Chiseled Stair'),
    S('Coral Sandstone Chiseled Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_sandstone_carved_1',
    'everness:coral_sandstone_carved_1',
    { cracky = 2 },
    { 'everness_coral_sandstone_carved_1.png' },
    S('Coral Sandstone Carved Stair'),
    S('Coral Sandstone Carved Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_lands_deep_ocean_sandstone_block',
    'everness:cursed_lands_deep_ocean_sandstone_block',
    { cracky = 2 },
    { 'everness_cursed_lands_deep_ocean_sandblock.png' },
    S('Cursed Lands Deep Ocean Sandstone Block Stair'),
    S('Cursed Lands Deep Ocean Sandstone Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'cursed_lands_deep_ocean_sandstone_brick',
    'everness:cursed_lands_deep_ocean_sandstone_brick',
    { cracky = 2 },
    { 'everness_cursed_lands_deep_ocean_sand_brick.png' },
    S('Cursed Lands Deep Ocean Sandstone Brick Stair'),
    S('Cursed Lands Deep Ocean Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Crystal
stairs.register_stair_and_slab(
    'crystal_forest_deep_ocean_sandstone_block',
    'everness:crystal_forest_deep_ocean_sandstone_block',
    { cracky = 2 },
    { 'everness_crystal_forest_deep_ocean_sandstone_block.png' },
    S('Crystal Forest Deep Ocean Sandstone Block Stair'),
    S('Crystal Forest Deep Ocean Sandstone Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'crystal_forest_deep_ocean_sandstone_brick',
    'everness:crystal_forest_deep_ocean_sandstone_brick',
    { cracky = 2 },
    { 'everness_crystal_forest_deep_ocean_sandstone_brick.png' },
    S('Crystal Forest Deep Ocean Sandstone Brick Stair'),
    S('Crystal Forest Deep Ocean Sandstone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'crystal_cobble',
    'everness:crystal_cobble',
    { cracky = 2 },
    { 'everness_crystal_cobble.png' },
    S('Crystal Cobblestone Stair'),
    S('Crystal Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'crystal_mossy_cobble',
    'everness:crystal_mossy_cobble',
    { cracky = 2 },
    { 'everness_crystal_mossy_cobble.png' },
    S('Crystal Mossy Cobblestone Stair'),
    S('Crystal Mossy Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'crystal_stone_brick',
    'everness:crystal_stone_brick',
    { cracky = 2 },
    { 'everness_crystal_stone_brick.png' },
    S('Crystal Stone Brick Stair'),
    S('Crystal Stone Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'everness_glass',
    'everness:glass',
    { cracky = 3, oddly_breakable_by_hand = 3 },
    { 'everness_glass.png' },
    S('Everness Glass Stair'),
    S('Everness Glass Slab'),
    Everness.node_sound_glass_defaults(),
    true
)

-- Coral Bones

stairs.register_stair_and_slab(
    'coral_bones_block',
    'everness:coral_bones_block',
    { cracky = 2, stone = 1 },
    { 'everness_coral_bones_block.png' },
    S('Coral Bones Block Stair'),
    S('Coral Bones Block Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'coral_bones_brick',
    'everness:coral_bones_brick',
    { cracky = 2, stone = 1 },
    { 'everness_coral_bones_brick.png' },
    S('Coral Bones Brick Stair'),
    S('Coral Bones Brick Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Mineral Waters

stairs.register_stair_and_slab(
    'mineral_stone',
    'everness:mineral_stone',
    { cracky = 3, stone = 1 },
    {{
        name = 'everness_mineral_stone.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Stair'),
    S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_stone_cobble',
    'everness:mineral_stone_cobble',
    { cracky = 3, stone = 2 },
    {{
        name = 'everness_mineral_cobblestone.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral') .. ' ' .. S('Cobblestone') .. ' ' .. S('Stair'),
    S('Mineral') .. ' ' .. S('Cobblestone') .. ' ' .. S('Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_stone_block',
    'everness:mineral_stone_block',
    { cracky = 2, stone = 1 },
    {{
        name = 'everness_mineral_stone_block.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Block') .. ' ' .. S('Stair'),
    S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Block') .. ' ' .. S('Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_stone_brick',
    'everness:mineral_stone_brick',
    { cracky = 2, stone = 1 },
    {{
        name = 'everness_mineral_stone_brick.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Brick') .. ' ' .. S('Stair'),
    S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Brick') .. ' ' .. S('Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_sandstone',
    'everness:mineral_sandstone',
    { cracky = 3 },
    { 'everness_mineral_sandstone.png' },
    S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Stair'),
    S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_sandstone_block',
    'everness:mineral_sandstone_block',
    { cracky = 2 },
    {{
        name = 'everness_mineral_sandstone_block.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Block') .. ' ' .. S('Stair'),
    S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Block') .. ' ' .. S('Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_sandstone_brick',
    'everness:mineral_sandstone_brick',
    { cracky = 2 },
    {{
        name = 'everness_mineral_sandstone_brick.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Brick') .. ' ' .. S('Stair'),
    S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Brick') .. ' ' .. S('Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_sandstone_brick_block',
    'everness:mineral_sandstone_brick_block',
    { cracky = 2 },
    {
        { name = 'everness_mineral_sandstone_brick_block_top.png' },
        { name = 'everness_mineral_sandstone_brick_block_top.png' },
        {
            name = 'everness_mineral_sandstone_brick_block.png',
            align_style = 'world',
            scale = 2
        }
    },
    S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Brick') .. ' ' .. S('Block') .. ' ' .. S('Stair'),
    S('Mineral') .. ' ' .. S('Sandstone') .. ' ' .. S('Brick') .. ' ' .. S('Block') .. ' ' .. S('Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_stone_brick_with_growth',
    'everness:mineral_stone_brick_with_growth',
    { cracky = 2, stone = 1 },
    {{
        name = 'everness_mineral_stone_brick_with_growth.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Brick') .. ' ' .. S('with Growth') .. ' ' .. S('Stair'),
    S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Brick') .. ' ' .. S('with Growth') .. ' ' .. S('Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_stone_brick_with_flower_growth',
    'everness:mineral_stone_brick_with_flower_growth',
    { cracky = 2, stone = 1 },
    {{
        name = 'everness_mineral_stone_brick_with_flower_growth.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Brick') .. ' ' .. S('with Flower Growth') .. ' ' .. S('Stair'),
    S('Mineral') .. ' ' .. S('Stone') .. ' ' .. S('Brick') .. ' ' .. S('with Flower Growth') .. ' ' .. S('Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

-- Palm Wood
stairs.register_stair_and_slab(
    'palm_tree_wood',
    'everness:palm_tree_wood',
    { choppy = 3, oddly_breakable_by_hand = 2, flammable = 3 },
    {{
        name = 'everness_palm_tree_wood.png',
        align_style = 'world',
        scale = 2
    }},
    S('Palm') .. ' ' .. S('Tree') .. ' ' .. S('Wood') .. ' ' .. S('Planks') .. ' ' .. S('Stair'),
    S('Palm') .. ' ' .. S('Tree') .. ' ' .. S('Wood') .. ' ' .. S('Planks') .. ' ' .. S('Slab'),
    Everness.node_sound_wood_defaults(),
    true
)

-- Mineral Waters Under
stairs.register_stair_and_slab(
    'mineral_cave_stone',
    'everness:mineral_cave_stone',
    { cracky = 2, stone = 1 },
    {{
        name = 'everness_mineral_stone_under.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral Cave Stone Stair'),
    S('Mineral Cave Stone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_cave_cobblestone',
    'everness:mineral_cave_cobblestone',
    { cracky = 2, stone = 1 },
    {{
        name = 'everness_mineral_cobblestone_under.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral Cave Cobblestone Stair'),
    S('Mineral Cave Cobblestone Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_lava_stone',
    'everness:mineral_lava_stone',
    { cracky = 2, stone = 1 },
    {{
        name = 'everness_mineral_lava_stone_animated.png',
        align_style = 'world',
        scale = 2,
        animation = {
            type = 'vertical_frames',
            aspect_w = 16,
            aspect_h = 16,
            length = 6.4,
        },
    }},
    S('Mineral Lava Stone with lava Stair'),
    S('Mineral Lava Stone with lava Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

stairs.register_stair_and_slab(
    'mineral_lava_stone_dry',
    'everness:mineral_lava_stone_dry',
    { cracky = 2, stone = 1 },
    {{
        name = 'everness_mineral_lava_stone_bottom.png',
        align_style = 'world',
        scale = 2
    }},
    S('Mineral Lava Stone without lava Stair'),
    S('Mineral Lava Stone without lava Slab'),
    Everness.node_sound_stone_defaults(),
    true
)

end
