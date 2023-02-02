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

function Everness.grow_coral_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_coral_tree_from_sapling.mts'
    minetest.place_schematic({ x = pos.x - 14, y = pos.y, z = pos.z - 14 }, path, 'random', nil, false)
end

function Everness.grow_crystal_bush(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_crystal_bush.mts'
    minetest.place_schematic({ x = pos.x - 1, y = pos.y, z = pos.z - 1 },
        path, '0', nil, false)
end

function Everness.grow_cursed_bush(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_cursed_bush.mts'
    minetest.place_schematic({ x = pos.x - 1, y = pos.y, z = pos.z - 1 },
        path, '0', nil, false)
end

function Everness.grow_baobab_tree(pos)
    local path = minetest.get_modpath('everness') .. '/schematics/everness_baobab_tree.mts'
    minetest.place_schematic({ x = pos.x - 12, y = pos.y, z = pos.z - 12 },
        path, '0', nil, false)
end

function Everness.grow_sapling(pos)
    if not default.can_grow(pos) then
        -- try again 5 min later
        minetest.get_node_timer(pos):start(300)
        return
    end

    local node = minetest.get_node(pos)

    if node.name == 'everness:coral_tree_sapling' then
        minetest.log('action', 'A sapling grows into a tree at ' .. minetest.pos_to_string(pos))
        Everness.grow_coral_tree(pos)
    elseif node.name == 'everness:crystal_bush_sapling' then
        minetest.log('action', 'A sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_crystal_bush(pos)
    elseif node.name == 'everness:cursed_bush_sapling' then
        minetest.log('action', 'A sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_cursed_bush(pos)
    elseif node.name == 'everness:baobab_sapling' then
        minetest.log('action', 'A sapling grows into a bush at ' .. minetest.pos_to_string(pos))
        Everness.grow_baobab_tree(pos)
    end
end
