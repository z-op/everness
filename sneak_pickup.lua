--basic settings
item_drop_settings = {} --settings table
item_drop_settings.radius_magnet = 2.5 --radius of item magnet
item_drop_settings.radius_collect = 0.5 --radius of collection
item_drop_settings.player_collect_height = 1 --added to their pos y value
local item_drop_delay = 0
local item_drop_timer = 0
local hide_nametag_timer = 0

local sneak = {}

minetest.register_on_joinplayer(function(player)
	local player_name = player:get_player_name()
	sneak[player_name] = false
end)

minetest.register_on_leaveplayer(function(player)
	local player_name = player:get_player_name()
	sneak[player_name] = nil
end)

minetest.register_globalstep(function(dtime)
	item_drop_timer = item_drop_timer + dtime
	hide_nametag_timer = hide_nametag_timer + dtime

	-- autopickup items when sneaking
	if item_drop_timer >= 0.2 then
		for _, player in ipairs(minetest.get_connected_players()) do
			local control = player:get_player_control()
			local player_hp = player:get_hp()
			local player_name = player:get_player_name()

			if control.sneak and (player_hp > 0 or not minetest.settings:get_bool("enable_damage")) then

				-- [Shift + E + Q] single drop item
				-- autopickup after item_drop_delay
				if control.aux1 then
					item_drop_delay = 3
				end

				if item_drop_delay > 0 then
					minetest.after(item_drop_delay, function()
						item_drop_delay = 0
					end)
					return
				else
					pick_dropped_items(player)
				end

			end
		end

		item_drop_timer = 0
	end

	-- hide nametag and mute footsteps when sneaking
	if hide_nametag_timer >= 1 then
		for _, player in ipairs(minetest.get_connected_players()) do
			local control = player:get_player_control()
			local player_hp = player:get_hp()
			local player_name = player:get_player_name()

			-- hide nametag when sneaking
			if control.sneak ~= sneak[player_name] then
				if control.sneak and player_hp > 0 then
					local nametag_tbl = player:get_nametag_attributes()
					nametag_tbl.color.a = 0
					player:set_nametag_attributes(nametag_tbl)
					player:set_properties{makes_footstep_sound = false}
				else
					local nametag_tbl = player:get_nametag_attributes()
					nametag_tbl.color.a = 255
					player:set_nametag_attributes(nametag_tbl)
					player:set_properties{makes_footstep_sound = true}
				end
				sneak[player_name] = control.sneak
			end
		end

		hide_nametag_timer = 0
	end
end)

function pick_dropped_items(player)
	local pos = player:get_pos()
	local inv = player:get_inventory()

	--collection
	for _,object in ipairs(minetest.get_objects_inside_radius({x=pos.x,y=pos.y + item_drop_settings.player_collect_height,z=pos.z}, item_drop_settings.radius_collect)) do
		if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "__builtin:item" then
			if inv and inv:room_for_item("main", ItemStack(object:get_luaentity().itemstring)) then
				inv:add_item("main", ItemStack(object:get_luaentity().itemstring))
				if object:get_luaentity().itemstring ~= "" then
					minetest.sound_play("everness_item_drop_pickup", {
						pos = pos,
						max_hear_distance = 16,
						gain = 0.4,
					})
				end
				object:get_luaentity().itemstring = ""
				object:remove()
			end
		end
	end

	--magnet
	for _,object in ipairs(minetest.get_objects_inside_radius({x=pos.x,y=pos.y + item_drop_settings.player_collect_height,z=pos.z}, item_drop_settings.radius_magnet)) do
		if not object:is_player() and object:get_luaentity() and object:get_luaentity().name == "__builtin:item" then
            if object:get_luaentity().name:find("water_life") then return end
			object:get_luaentity().collect = true

			if object:get_luaentity().collect then
				if inv and inv:room_for_item("main", ItemStack(object:get_luaentity().itemstring)) then

					local pos1 = pos
					pos1.y = pos1.y+0.2
					local pos2 = object:get_pos()
					local vec = {x=pos1.x-pos2.x, y=(pos1.y+item_drop_settings.player_collect_height)-pos2.y, z=pos1.z-pos2.z}

					vec.x = pos2.x + vec.x
					vec.y = pos2.y + vec.y
					vec.z = pos2.z + vec.z
					object:move_to(vec)

					object:get_luaentity().physical_state = false
					object:get_luaentity().object:set_properties({
						physical = false
					})

					object:set_acceleration({x=0, y=0, z=0})
					object:set_velocity({x=0, y=0, z=0})

					--fix eternally falling items
					minetest.after(0, function()
						object:set_acceleration({x=0, y=0, z=0})
						object:set_velocity({x=0, y=0, z=0})
					end)

					minetest.after(1, function(args)
						local lua = object:get_luaentity()
						if object == nil or lua == nil or lua.itemstring == nil then
							return
						end
						if inv:room_for_item("main", ItemStack(object:get_luaentity().itemstring)) then
							inv:add_item("main", ItemStack(object:get_luaentity().itemstring))
							if object:get_luaentity().itemstring ~= "" then
								minetest.sound_play("everness_item_drop_pickup", {
									pos = pos,
									max_hear_distance = 100,
									gain = 0.4,
								})
							end
							object:get_luaentity().itemstring = ""
							object:remove()
						else
							object:set_velocity({x=0,y=0,z=0})
							object:get_luaentity().physical_state = true
							object:get_luaentity().object:set_properties({
								physical = true
							})
						end
					end, {player, object})

				end
			end
		end
	end
end
