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

minetest.override_item('everness:coral_dirt', {
    soil = {
        base = 'everness:coral_dirt',
        dry = 'everness:coral_dirt_soil',
        wet = 'everness:coral_dirt_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_coral_grass', {
    soil = {
        base = 'everness:dirt_with_coral_grass',
        dry = 'everness:coral_dirt_soil',
        wet = 'everness:coral_dirt_soil_wet'
    }
})

-- normal soil
minetest.register_node('everness:coral_dirt_soil', {
    description = S('Coral Dirt Soil'),
    tiles = {
        'everness_coral_dirt.png^(everness_coral_dirt.png^[mask:everness_farming_soil_overlay.png^[multiply:#A05F3A80)',
        'everness_coral_dirt.png'
    },
    drop = 'everness:coral_dirt',
    groups = { crumbly = 3, not_in_creative_inventory = 1, soil = 2, grassland = 1, field = 1 },
    sounds = default.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:coral_dirt',
        dry = 'everness:coral_dirt_soil',
        wet = 'everness:coral_dirt_soil_wet'
    }
})

-- wet soil
minetest.register_node('everness:coral_dirt_soil_wet', {
    description = S('Coral Dirt Wet Soil'),
    tiles = {
        'everness_coral_dirt.png^(everness_coral_dirt.png^[mask:everness_farming_soil_wet_overlay.png^[multiply:#A05F3A80)',
        'everness_coral_dirt.png^(everness_coral_dirt.png^[mask:everness_farming_soil_wet_side_overlay.png^[multiply:#A05F3A80)',
    },
    drop = 'everness:coral_dirt',
    groups = { crumbly = 3, not_in_creative_inventory = 1, soil = 3, wet = 1, grassland = 1, field = 1 },
    sounds = default.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:coral_dirt',
        dry = 'everness:coral_dirt_soil',
        wet = 'everness:coral_dirt_soil_wet'
    }
})
