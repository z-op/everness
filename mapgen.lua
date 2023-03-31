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
-- Register ores
--

-- Scatter ores

-- Pyrite

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:stone_with_pyrite',
    wherein = 'everness_mapgen_stone',
    clust_scarcity = 13 * 13 * 13,
    clust_num_ores = 5,
    clust_size = 3,
    y_max = 31000,
    y_min = 1025,
})

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:stone_with_pyrite',
    wherein = 'everness_mapgen_stone',
    clust_scarcity = 15 * 15 * 15,
    clust_num_ores = 3,
    clust_size = 2,
    y_max = -256,
    y_min = -511,
})

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:stone_with_pyrite',
    wherein = 'everness_mapgen_stone',
    clust_scarcity = 13 * 13 * 13,
    clust_num_ores = 5,
    clust_size = 3,
    y_max = -512,
    y_min = -31000,
})

-- Quartz

minetest.register_ore({
    ore_type = 'scatter',
    ore = 'everness:quartz_ore',
    wherein = { 'everness_mapgen_stone' },
    clust_scarcity = 10 * 10 * 10,
    clust_num_ores = 6,
    clust_size = 5,
    y_max = -5,
    y_min = -31000,
})
