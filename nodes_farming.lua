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

minetest.override_item('everness:dirt_1', {
    soil = {
        base = 'everness:dirt_1',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_grass_1', {
    soil = {
        base = 'everness:dirt_with_grass_1',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_grass_2', {
    soil = {
        base = 'everness:dirt_with_grass_2',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_grass_extras_1', {
    soil = {
        base = 'everness:dirt_with_grass_extras_1',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_grass_extras_2', {
    soil = {
        base = 'everness:dirt_with_grass_extras_2',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.override_item('everness:crystal_dirt', {
    soil = {
        base = 'everness:crystal_dirt',
        dry = 'everness:crystal_dirt_soil',
        wet = 'everness:crystal_dirt_soil_wet'
    }
})

minetest.override_item('everness:dirt_with_crystal_grass', {
    soil = {
        base = 'everness:dirt_with_crystal_grass',
        dry = 'everness:crystal_dirt_soil',
        wet = 'everness:crystal_dirt_soil_wet'
    }
})

minetest.override_item('everness:crystal_cave_dirt', {
    soil = {
        base = 'everness:crystal_cave_dirt',
        dry = 'everness:crystal_cave_dirt_soil',
        wet = 'everness:crystal_cave_dirt_soil_wet'
    }
})

minetest.override_item('everness:crystal_cave_dirt_with_moss', {
    soil = {
        base = 'everness:crystal_cave_dirt_with_moss',
        dry = 'everness:crystal_cave_dirt_soil',
        wet = 'everness:crystal_cave_dirt_soil_wet'
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

minetest.register_node('everness:dirt_1_soil', {
    description = S('Dirt Soil'),
    tiles = {
        'everness_dirt_1.png^(everness_dirt_1.png^[mask:everness_farming_soil_overlay.png^[multiply:#51341E80)',
        'everness_dirt_1.png'
    },
    drop = 'everness:dirt_1',
    groups = { crumbly = 3, not_in_creative_inventory = 1, soil = 2, grassland = 1, field = 1 },
    sounds = default.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:dirt_1',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.register_node('everness:crystal_dirt_soil', {
    description = S('Crystal Dirt Soil'),
    tiles = {
        'everness_crystal_dirt.png^(everness_crystal_dirt.png^[mask:everness_farming_soil_overlay.png^[multiply:#75506980)',
        'everness_crystal_dirt.png'
    },
    drop = 'everness:dirt_1',
    groups = { crumbly = 3, not_in_creative_inventory = 1, soil = 2, grassland = 1, field = 1 },
    sounds = default.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:crystal_dirt',
        dry = 'everness:crystal_dirt_soil',
        wet = 'everness:crystal_dirt_soil_wet'
    }
})

minetest.register_node('everness:crystal_cave_dirt_soil', {
    description = S('Crystal Cave Dirt Soil'),
    tiles = {
        'everness_crystal_cave_dirt.png^(everness_crystal_cave_dirt.png^[mask:everness_farming_soil_overlay.png^[multiply:#CCB17E80)',
        'everness_crystal_cave_dirt.png'
    },
    drop = 'everness:dirt_1',
    groups = { crumbly = 3, not_in_creative_inventory = 1, soil = 2, grassland = 1, field = 1 },
    sounds = default.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:crystal_cave_dirt',
        dry = 'everness:crystal_cave_dirt_soil',
        wet = 'everness:crystal_cave_dirt_soil_wet'
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

minetest.register_node('everness:dirt_1_soil_wet', {
    description = S('Coral Dirt Wet Soil'),
    tiles = {
        'everness_dirt_1.png^(everness_dirt_1.png^[mask:everness_farming_soil_wet_overlay.png^[multiply:#51341E80)',
        'everness_dirt_1.png^(everness_dirt_1.png^[mask:everness_farming_soil_wet_side_overlay.png^[multiply:#51341E80)',
    },
    drop = 'everness:dirt_1',
    groups = { crumbly = 3, not_in_creative_inventory = 1, soil = 3, wet = 1, grassland = 1, field = 1 },
    sounds = default.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:dirt_1',
        dry = 'everness:dirt_1_soil',
        wet = 'everness:dirt_1_soil_wet'
    }
})

minetest.register_node('everness:crystal_dirt_soil_wet', {
    description = S('Crystal Dirt Wet Soil'),
    tiles = {
        'everness_crystal_dirt.png^(everness_crystal_dirt.png^[mask:everness_farming_soil_wet_overlay.png^[multiply:#75506980)',
        'everness_crystal_dirt.png^(everness_crystal_dirt.png^[mask:everness_farming_soil_wet_side_overlay.png^[multiply:#75506980)',
    },
    drop = 'everness:dirt_1',
    groups = { crumbly = 3, not_in_creative_inventory = 1, soil = 3, wet = 1, grassland = 1, field = 1 },
    sounds = default.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:crystal_dirt',
        dry = 'everness:crystal_dirt_soil',
        wet = 'everness:crystal_dirt_soil_wet'
    }
})

minetest.register_node('everness:crystal_cave_dirt_soil_wet', {
    description = S('Crystal Cave Dirt Wet Soil'),
    tiles = {
        'everness_crystal_cave_dirt.png^(everness_crystal_cave_dirt.png^[mask:everness_farming_soil_wet_overlay.png^[multiply:#CCB17E80)',
        'everness_crystal_cave_dirt.png^(everness_crystal_cave_dirt.png^[mask:everness_farming_soil_wet_side_overlay.png^[multiply:#CCB17E80)',
    },
    drop = 'everness:dirt_1',
    groups = { crumbly = 3, not_in_creative_inventory = 1, soil = 3, wet = 1, grassland = 1, field = 1 },
    sounds = default.node_sound_dirt_defaults(),
    soil = {
        base = 'everness:crystal_cave_dirt',
        dry = 'everness:crystal_cave_dirt_soil',
        wet = 'everness:crystal_cave_dirt_soil_wet'
    }
})
