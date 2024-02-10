--[[
    Everness. Never ending discovery in Everness mapgen.
    Copyright (C) 2024 SaKeL

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

Everness:register_node('everness:mineral_lava_stone', {
    description = S('Mineral Lava Stone'),
    -- Textures of node; +Y, -Y, +X, -X, +Z, -Z
    tiles = {
        {
            name = 'everness_mineral_lava_stone.png',
            align_style = 'world',
            scale = 2
        },
        {
            name = 'everness_mineral_lava_stone.png',
            align_style = 'world',
            scale = 2
        },
        {
            name = 'everness_mineral_lava_stone_side.png',
            align_style = 'world',
            scale = 2
        }
    },
    -- drop = 'everness:coral_desert_cobble',
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
