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

minetest = minetest.global_exists('minetest') and minetest --[[@as Minetest]]

local path = minetest.get_modpath('everness')
local mod_start_time = minetest.get_us_time()

dofile(path .. '/api.lua')
dofile(path .. '/nodes.lua')
dofile(path .. '/nodes.lua')

if minetest.get_modpath('xpanes') and minetest.global_exists('xpanes') then
    dofile(path .. '/panes.lua')
end

dofile(path .. '/bamboo.lua')
dofile(path .. '/functions.lua')
dofile(path .. '/trees.lua')
dofile(path .. '/mapgen.lua')

if minetest.get_modpath('stairs') and minetest.global_exists('stairs') then
    dofile(path .. '/stairs.lua')
end

if minetest.get_modpath('walls') and minetest.global_exists('walls') then
    dofile(path .. '/walls.lua')
end

dofile(path .. '/fences.lua')

if minetest.get_modpath('doors') and minetest.global_exists('doors') then
    dofile(path .. '/doors.lua')
end

dofile(path .. '/vines.lua')
dofile(path .. '/tools.lua')
dofile(path .. '/craftitems.lua')
dofile(path .. '/crafting.lua')
dofile(path .. '/loot_chests.lua')
dofile(path .. '/skybox.lua')
dofile(path .. '/env_sounds.lua')

local mod_end_time = (minetest.get_us_time() - mod_start_time) / 1000000

print('[Mod] everness loaded.. [' .. mod_end_time .. 's]')
