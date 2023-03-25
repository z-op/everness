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

-- Dry Wood

mcl_fences.register_fence_and_fence_gate(
    'fence_dry_wood',
    S('Dry Wood Fence'),
    S('Dry Wood Fence Gate'),
    'everness_fence_dry_wood.png',
    { handy = 1, axey = 1, flammable = 2, fence_wood = 1, fire_encouragement = 5, fire_flammability = 20 },
    2,
    15,
    { 'group:fence_wood' },
    Everness.node_sound_wood_defaults()
)

-- Bamboo Wood

mcl_fences.register_fence_and_fence_gate(
    'fence_bamboo_wood',
    S('Bamboo Wood Fence'),
    S('Bamboo Wood Fence Gate'),
    'everness_fence_bamboo_wood.png',
    { handy = 1, axey = 1, flammable = 2, fence_wood = 1, fire_encouragement = 5, fire_flammability = 20 },
    2,
    15,
    { 'group:fence_wood' },
    Everness.node_sound_wood_defaults()
)
