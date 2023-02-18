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

minetest.register_tool('everness:vine_shears', {
    description = S('Vine Shears'),
    inventory_image = 'everness_vine_shears.png',
    wield_image = 'everness_vine_shears.png',
    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level = 0,
        groupcaps = {
            snappy = { times = { [3] = 0.2 }, uses = 60, maxlevel = 3 },
            wool = { times = { [3] = 0.2 }, uses = 60, maxlevel = 3 }
        }
    },
})

minetest.register_tool('everness:pick_illuminating', {
    description = 'Illuminating Pickaxe (secondary use to place temporary illuminating crystal)',
    short_description = 'Illuminating Pickaxe',
    inventory_image = 'everness_pick_illuminating.png',
    wield_scale = { x = 2, y = 2, z = 1 },
    tool_capabilities = {
        full_punch_interval = 0.9,
        max_drop_level = 3,
        groupcaps = {
            cracky = { times = { [1] = 2.0, [2] = 1.0, [3] = 0.50 }, uses = 60, maxlevel = 3 }
        },
        damage_groups = { fleshy = 5 },
    },
    sound = { breaks = 'default_tool_breaks' },
    groups = { pickaxe = 1, enchantability = 10 },
    on_place = function(itemstack, placer, pointed_thing)
        if pointed_thing.type == 'node' then
            local pos = minetest.get_pointed_thing_position(pointed_thing)

            if not pos or not placer then
                return itemstack
            end

            local player_name = placer:get_player_name()
            local pointed_node = minetest.get_node(pos)
            local pointed_node_def = minetest.registered_nodes[pointed_node.name]
            local pos_placer = placer:get_pos()

            if not pointed_node then
                return itemstack
            end

            -- check if we have to use default on_place first
            if pointed_node_def.on_rightclick then
                return pointed_node_def.on_rightclick(pos, pointed_node, placer, itemstack, pointed_thing)
            end

            if not minetest.is_protected(pointed_thing.above, player_name) and
                not minetest.is_protected(pointed_thing.under, player_name)
                and minetest.get_node(pointed_thing.above).name == 'air'
            then
                -- place crystal
                minetest.add_particlespawner({
                    amount = 50,
                    time = 1,
                    size = {
                        min = 0.5,
                        max = 1,
                    },
                    exptime = 2,
                    pos = vector.new(pos_placer.x, pos_placer.y, pos_placer.z),
                    texture = {
                        name = 'everness_particle.png^[colorize:#FFEE83:255',
                        alpha_tween = {
                            1, 0.5,
                            style = 'fwd',
                            reps = 1
                        },
                        scale_tween = {
                            1, 0.5,
                            style = 'fwd',
                            reps = 1
                        }
                    },
                    radius = { min = 0.5, max = 0.7 },
                    attract = {
                        kind = 'point',
                        strength = 1,
                        origin = vector.new(pointed_thing.above.x, pointed_thing.above.y, pointed_thing.above.z),
                    },
                    glow = 12
                })

                minetest.set_node(pointed_thing.above, { name = 'everness:floating_crystal' })
                minetest.get_node_timer(pointed_thing.above):start(math.random(85, 95))

                if not minetest.settings:get_bool('creative_mode')
                    or not minetest.check_player_privs(placer:get_player_name(), { creative = true })
                then
                    itemstack:add_wear(65535 / (150 - 1))
                end

                return itemstack
            end
        end

        return itemstack
    end
})

minetest.register_tool('everness:shovel_silk', {
    description = S('Silk Shovel'),
    inventory_image = 'everness_shovel_silk.png',
    wield_image = 'everness_shovel_silk.png^[transformR90',
    wield_scale = { x = 2, y = 2, z = 1 },
    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level = 1,
        groupcaps = {
            crumbly = { times = { [1] = 1.10, [2] = 0.50, [3] = 0.30 }, uses = 30, maxlevel = 3 },
        },
        damage_groups = { fleshy = 4 },
    },
    sound = { breaks = 'default_tool_breaks' },
    -- no `shovel` group so it cannot be enchanted
    -- groups = { shovel = 1 }
})

local old_handle_node_drops = minetest.handle_node_drops

function minetest.handle_node_drops(pos, drops, digger)
    if not digger
        or not digger:is_player()
        or digger:get_wielded_item():get_name() ~= 'everness:shovel_silk'
    then
        return old_handle_node_drops(pos, drops, digger)
    end

    local node = minetest.get_node(pos)

    -- Silk Touch
    if minetest.get_item_group(node.name, 'crumbly') > 0
        and minetest.get_item_group(node.name, 'no_silktouch') == 0
    then
        -- drop raw item/node
        return old_handle_node_drops(pos, { ItemStack(node.name) }, digger)
    end

    return old_handle_node_drops(pos, drops, digger)
end
