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
-- Convert everness:dirt to something that fits the environment
--

minetest.register_abm({
    label = 'Everness Grass spread',
    nodenames = {
        'default:dirt',
        'everness:coral_dirt',
        'everness:cursed_dirt',
        'everness:crystal_dirt',
    },
    neighbors = {
        'air',
        'group:coral_grass',
        'group:cursed_grass',
        'group:crystal_grass',
        'group:forsaken_tundra_grass',
    },
    interval = 6,
    chance = 50,
    catch_up = false,
    action = function(pos, node)
        -- Check for darkness: night, shadow or under a light-blocking node
        -- Returns if ignore above
        local above = { x = pos.x, y = pos.y + 1, z = pos.z }
        if (minetest.get_node_light(above) or 0) < 13 then
            return
        end

        -- Look for spreading dirt-type neighbours
        local p2 = minetest.find_node_near(pos, 1, 'group:everness_spreading_dirt_type')
            or minetest.find_node_near(pos, 1, 'group:spreading_dirt_type')

        if p2 then
            local n3 = minetest.get_node(p2)
            minetest.set_node(pos, { name = n3.name })
            return
        end

        -- Else, any seeding nodes on top?
        local name = minetest.get_node(above).name

        if minetest.get_item_group(name, 'coral_grass') ~= 0 then
            minetest.set_node(pos, { name = 'everness:dirt_with_coral_grass' })
        elseif minetest.get_item_group(name, 'cursed_grass') ~= 0 then
            minetest.set_node(pos, { name = 'everness:dirt_with_cursed_grass' })
        elseif minetest.get_item_group(name, 'crystal_grass') ~= 0 then
            minetest.set_node(pos, { name = 'everness:dirt_with_crystal_grass' })
        end
    end
})

-- Spread mold on stone

minetest.register_abm({
    label = 'Everness Mold spread',
    nodenames = {
        'everness:mold_cobble'
    },
    neighbors = {
        'air',
        'group:moldy'
    },
    interval = 6,
    chance = 50,
    catch_up = false,
    action = function(pos, node)
        -- Check for darkness: night, shadow or under a light-blocking node
        -- Returns if ignore above
        local above = { x = pos.x, y = pos.y + 1, z = pos.z }

        -- Look for spreading dirt-type neighbours
        local p2 = minetest.find_node_near(pos, 1, 'group:everness_spreading_mold_type')

        if p2 then
            local n3 = minetest.get_node(p2)
            minetest.set_node(pos, { name = n3.name })
            return
        end

        -- Else, any seeding nodes on top?
        local name = minetest.get_node(above).name

        if minetest.get_item_group(name, 'forsaken_tundra_grass') ~= 0 then
            minetest.set_node(pos, { name = 'everness:mold_stone_with_moss' })
        end
    end
})

-- Spread moss veins on stone

minetest.register_abm({
    label = 'Everness moss veins spread',
    nodenames = {
        'everness:soul_sandstone'
    },
    neighbors = {
        'air',
        'group:moss_veins'
    },
    interval = 6,
    chance = 50,
    catch_up = false,
    action = function(pos, node)
        -- Check for darkness: night, shadow or under a light-blocking node
        -- Returns if ignore above
        local above = { x = pos.x, y = pos.y + 1, z = pos.z }

        -- Look for spreading dirt-type neighbours
        local p2 = minetest.find_node_near(pos, 1, 'group:everness_spreading_moss_veins_type')

        if p2 then
            local n3 = minetest.get_node(p2)
            minetest.set_node(pos, { name = n3.name })
            return
        end

        -- Else, any seeding nodes on top?
        local name = minetest.get_node(above).name

        if minetest.get_item_group(name, 'cursed_grass') ~= 0 then
            minetest.set_node(pos, { name = 'everness:soul_sandstone_veined' })
        end
    end
})


--
-- Grass and dry grass removed in darkness
--

minetest.register_abm({
    label = 'Everness Grass covered',
    nodenames = { 'group:everness_spreading_dirt_type' },
    interval = 8,
    chance = 50,
    catch_up = false,
    action = function(pos, node)
        local above = { x = pos.x, y = pos.y + 1, z = pos.z }
        local name = minetest.get_node(above).name
        local nodedef = minetest.registered_nodes[name]

        if name ~= 'ignore'
            and nodedef
            and not (
                (nodedef.sunlight_propagates or nodedef.paramtype == 'light')
                and nodedef.liquidtype == 'none'
            )
        then
            if node.name == 'everness:dirt_with_coral_grass' then
                minetest.set_node(pos, { name = 'everness:coral_dirt' })
            elseif node.name == 'everness:dirt_with_cursed_grass' then
                minetest.set_node(pos, { name = 'everness:cursed_dirt' })
            elseif node.name == 'everness:dirt_with_crystal_grass' then
                minetest.set_node(pos, { name = 'everness:crystal_dirt' })
            end
        end
    end
})

--
-- Leafdecay
--

default.register_leafdecay({
    trunks = {
        'everness:coral_tree',
        'everness:dry_tree',
        'everness:crystal_tree',
        'everness:crystal_bush_stem',
        'everness:cursed_bush_stem'
    },
    leaves = {
        'everness:coral_leaves',
        'everness:dry_branches',
        'everness:crystal_leaves',
        'everness:crystal_bush_leaves'
    },
    radius = 3
})

-- Baobab Tree
default.register_leafdecay({
    trunks = { 'everness:baobab_tree' },
    leaves = { 'everness:baobab_leaves', 'everness:baobab_fruit_renewable' },
    radius = 4,
})

--
-- Moss growth on cobble near water
--

local moss_correspondences = {
    ['everness:coral_desert_cobble'] = 'everness:coral_desert_mossy_cobble',
    -- ['stairs:slab_cobble'] = 'stairs:slab_mossycobble',
    -- ['stairs:stair_cobble'] = 'stairs:stair_mossycobble',
    -- ['stairs:stair_inner_cobble'] = 'stairs:stair_inner_mossycobble',
    -- ['stairs:stair_outer_cobble'] = 'stairs:stair_outer_mossycobble',
    -- ['walls:cobble'] = 'walls:mossycobble',
}
minetest.register_abm({
    label = 'Everness Moss growth',
    nodenames = {
        'everness:coral_desert_cobble',
        -- 'stairs:slab_cobble',
        -- 'stairs:stair_cobble',
        -- 'stairs:stair_inner_cobble',
        -- 'stairs:stair_outer_cobble',
        -- 'walls:cobble'
    },
    neighbors = { 'group:water' },
    interval = 16,
    chance = 200,
    catch_up = false,
    action = function(pos, node)
        node.name = moss_correspondences[node.name]
        if node.name then
            minetest.set_node(pos, node)
        end
    end
})

--
-- Magma growth on cobble near lava
--

minetest.register_abm({
    label = 'Magma growth',
    nodenames = {
        'default:cobble',
        'stairs:slab_cobble',
        'stairs:stair_cobble',
        'stairs:stair_inner_cobble',
        'stairs:stair_outer_cobble',
        'walls:cobble',
        'everness:volcanic_rock',
    },
    neighbors = { 'group:lava' },
    interval = 16,
    chance = 200,
    catch_up = false,
    action = function(pos, node)
        if node.name == 'default:cobble' then
            minetest.set_node(pos, { name = 'everness:magmacobble' })
        elseif node.name == 'everness:volcanic_rock' then
            minetest.set_node(pos, { name = 'everness:volcanic_rock_with_magma' })
        elseif node.name == 'stairs:slab_cobble' then
            minetest.set_node(pos, { name = 'stairs:slab_magmacobble', param2 = node.param2 })
        elseif node.name == 'stairs:stair_cobble' then
            minetest.set_node(pos, { name = 'stairs:stair_magmacobble', param2 = node.param2 })
        elseif node.name == 'stairs:stair_inner_cobble' then
            minetest.set_node(pos, { name = 'stairs:stair_inner_magmacobble', param2 = node.param2 })
        elseif node.name == 'stairs:stair_outer_cobble' then
            minetest.set_node(pos, { name = 'stairs:stair_outer_magmacobble', param2 = node.param2 })
        elseif node.name == 'walls:cobble' then
            minetest.set_node(pos, { name = 'x_walls:magmacobble', param2 = node.param2 })
        end
    end
})

--
-- Falling leaves
--

minetest.register_abm({
    label = 'everness:falling_leaves',
    nodenames = { 'group:falling_leaves' },
    neighbors = { 'air' },
    interval = 16,
    chance = 16,
    catch_up = false,
    action = function(pos, node)
        if not minetest.settings:get_bool('enable_particles') then
            return
        end

        local air_below = minetest.find_nodes_in_area(pos, { x = pos.x, y = pos.y + 3, z = pos.z }, { 'air' })

        if #air_below < 3 then
            return
        end

        -- particles
        local particlespawner_def = {
            amount = 5,
            time = 1,
            minpos = { x = pos.x - 0.5, y = pos.y - 0.5, z = pos.z - 0.5 },
            maxpos = { x = pos.x + 0.5, y = pos.y - 0.5, z = pos.z + 0.5 },
            minvel = { x = -0.25, y = -0.25, z = -0.25 },
            maxvel = { x = 0.25, y = -0.5, z = 0.25 },
            minacc = { x = -0.25, y = -0.25, z = -0.25 },
            maxacc = { x = 0.25, y = -0.5, z = 0.25 },
            minexptime = 3,
            maxexptime = 6,
            minsize = 0.5,
            maxsize = 1.5,
            node = node
        }

        if minetest.has_feature({ dynamic_add_media_table = true, particlespawner_tweenable = true }) then
            -- new syntax, after v5.6.0
            particlespawner_def = {
                amount = 5,
                time = 1,
                size = {
                    min = 0.5,
                    max = 1.5,
                },
                exptime = {
                    min = 3,
                    max = 6
                },
                pos = {
                    min = vector.new({ x = pos.x - 0.5, y = pos.y - 0.5, z = pos.z - 0.5 }),
                    max = vector.new({ x = pos.x + 0.5, y = pos.y - 0.5, z = pos.z + 0.5 }),
                },
                vel = {
                    min = vector.new({ x = -0.25, y = -0.25, z = -0.25 }),
                    max = vector.new({ x = 0.25, y = -0.5, z = 0.25 })
                },
                acc = {
                    min = vector.new({ x = -0.25, y = -0.25, z = -0.25 }),
                    max = vector.new({ x = 0.25, y = -0.5, z = 0.25 })
                },
                node = {
                    name = node.name
                }
            }
        end

        minetest.add_particlespawner(particlespawner_def)
    end
})

--
-- Falling leaves - vines
--

minetest.register_abm({
    label = 'everness:falling_vines',
    nodenames = { 'group:falling_vines' },
    neighbors = { 'air' },
    interval = 16,
    chance = 16,
    catch_up = false,
    action = function(pos, node)
        if not minetest.settings:get_bool('enable_particles') then
            return
        end

        local air_around = minetest.find_nodes_in_area(
            { x = pos.x - 1, y = pos.y, z = pos.z - 1 },
            { x = pos.x + 1, y = pos.y, z = pos.z + 1 },
            { 'air' }
        )

        if #air_around < 3 then
            return
        end

        -- particles
        local particlespawner_def = {
            amount = 5,
            time = 1,
            minpos = { x = pos.x - 0.5, y = pos.y - 0.5, z = pos.z - 0.5 },
            maxpos = { x = pos.x + 0.5, y = pos.y - 0.5, z = pos.z + 0.5 },
            minvel = { x = -0.25, y = -0.25, z = -0.25 },
            maxvel = { x = 0.25, y = -0.5, z = 0.25 },
            minacc = { x = -0.25, y = -0.25, z = -0.25 },
            maxacc = { x = 0.25, y = -0.5, z = 0.25 },
            minexptime = 15,
            maxexptime = 30,
            minsize = 0.5,
            maxsize = 1.5,
            node = node,
            glow = 7
        }

        if minetest.has_feature({ dynamic_add_media_table = true, particlespawner_tweenable = true }) then
            -- new syntax, after v5.6.0
            particlespawner_def = {
                amount = 5,
                time = 1,
                size = {
                    min = 0.5,
                    max = 1.5,
                },
                exptime = {
                    min = 15,
                    max = 30
                },
                pos = {
                    min = vector.new(pos.x - 0.5, pos.y - 0.5, pos.z - 0.5),
                    max = vector.new(pos.x + 0.5, pos.y - 0.5, pos.z + 0.5),
                },
                vel = {
                    min = vector.new(-0.25, -0.15, -0.25),
                    max = vector.new(0.25, -0.25, 0.25)
                },
                acc = {
                    min = vector.new(-0.25, -0.05, -0.25),
                    max = vector.new(0.25, -0.1, 0.25)
                },
                node = {
                    name = node.name
                },
                glow = 7
            }
        end

        minetest.add_particlespawner(particlespawner_def)
    end
})

minetest.register_abm({
    label = 'Grow orange cactus',
    nodenames = {
        'everness:cactus_orange',
        'everness:cactus_blue'
    },
    neighbors = { 'group:mold_soil' },
    interval = 12,
    chance = 83,
    action = function(...)
        Everness:grow_cactus(...)
    end
})
