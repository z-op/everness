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

Everness:register_node('everness:mineral_cave_stone', {
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

Everness:register_node('everness:mineral_cave_cobblestone', {
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

Everness:register_node('everness:mineral_lava_stone', {
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

Everness:register_node('everness:mineral_lava_stone_dry', {
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

for i = 1, 7 do
    Everness:register_node('everness:volcanic_spike_' .. i, {
        description = S('Volcanic Spike') .. ' ' .. i,
        tiles = { 'everness_volcanic_rock.png' },
        sounds = Everness.node_sound_stone_defaults(),
        drawtype = 'nodebox',
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
        node_box = {
            type = 'fixed',
            fixed = {
                {
                    (-8 + i) / 16,
                    -8 / 16,
                    (-8 + i) / 16,
                    (8 - i) / 16,
                    8 / 16,
                    (8 - i) / 16
                }
            }
        },
        selection_box = {
            type = 'fixed',
            fixed = {
                (-8 + i - 1) / 16,
                -8 / 16,
                (-8 + i - 1) / 16,
                (8 - i + 1) / 16,
                8 / 16,
                (8 - i + 1) / 16
            }
        },
        collision_box = {
            type = 'fixed',
            fixed = {
                (-8 + i) / 16,
                -8 / 16,
                (-8 + i) / 16,
                (8 - i) / 16,
                8 / 16,
                (8 - i) / 16
            },
        },
    })
end

for i = 1, 7 do
    Everness:register_node('everness:mineral_cave_stone_spike_' .. i, {
        description = S('Mineral Lava Stone Spike') .. ' ' .. i,
        -- Textures of node; +Y, -Y, +X, -X, +Z, -Z
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
        drawtype = 'nodebox',
        is_ground_content = false,
        node_box = {
            type = 'fixed',
            fixed = {
                {
                    (-8 + i) / 16,
                    -8 / 16,
                    (-8 + i) / 16,
                    (8 - i) / 16,
                    8 / 16,
                    (8 - i) / 16
                }
            }
        },
        selection_box = {
            type = 'fixed',
            fixed = {
                (-8 + i - 1) / 16,
                -8 / 16,
                (-8 + i - 1) / 16,
                (8 - i + 1) / 16,
                8 / 16,
                (8 - i + 1) / 16
            }
        },
        collision_box = {
            type = 'fixed',
            fixed = {
                (-8 + i) / 16,
                -8 / 16,
                (-8 + i) / 16,
                (8 - i) / 16,
                8 / 16,
                (8 - i) / 16
            },
        },
    })
end
