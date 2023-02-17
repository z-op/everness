--[[
    Everness. Never ending discovery in Everness mapgen.
    Copyright (C) 2022 SaKeL <juraj.vajda@gmail.com>

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

local timer = 0

minetest.register_globalstep(function(dtime)
    local players = minetest.get_connected_players()

    timer = timer + dtime

    if timer > 5 then
        for _, player in ipairs(players) do
            local player_meta = player:get_meta()
            local player_pos = player:get_pos()
            local biome_data = minetest.get_biome_data(player_pos)
            local player_biome_name = player_meta:get_string('everness_biome_name')
            local is_underground = player_meta:get_int('everness_is_underground')

            if not biome_data then
                return
            end

            local biome_name = minetest.get_biome_name(biome_data.biome)

            if not biome_name then
                return
            end

            if player_biome_name ~= biome_name then
                player_meta:set_string('everness_biome_name', biome_name)

                if Everness.skybox.biomes[biome_name] then
                    if Everness.skybox.biomes[biome_name].sun_parameters then
                        player:set_sun(Everness.skybox.biomes[biome_name].sun_parameters)
                    else
                        player:set_sun()
                    end

                    if Everness.skybox.biomes[biome_name].moon_parameters then
                        player:set_moon(Everness.skybox.biomes[biome_name].moon_parameters)
                    else
                        player:set_moon()
                    end

                    if Everness.skybox.biomes[biome_name].sky_parameters then
                        player:set_sky(Everness.skybox.biomes[biome_name].sky_parameters)
                    else
                        player:set_sky()
                    end

                    if Everness.skybox.biomes[biome_name].cloud_parameters then
                        player:set_clouds(Everness.skybox.biomes[biome_name].cloud_parameters)
                    else
                        player:set_clouds()
                    end

                    if Everness.skybox.biomes[biome_name].star_parameters then
                        player:set_stars(Everness.skybox.biomes[biome_name].star_parameters)
                    else
                        player:set_stars()
                    end
                else
                    player:set_moon()
                    player:set_sun()
                    player:set_sky()
                    player:set_clouds()
                    player:set_stars()
                end
            end

            if player_pos.y <= -256 and is_underground == 0 or (is_underground ~= 0 and player_biome_name ~= biome_name) then
                -- hide sun, moon, stars ... underground
                player_meta:set_int('everness_is_underground', 1)

                player:set_sun({
                    visible = false,
                    sunrise_visible = false
                })

                player:set_moon({
                    visible = false
                })

                player:set_stars({
                    visible = false
                })

            elseif player_pos.y > -256 and is_underground ~= 0 or (is_underground == 0 and player_biome_name ~= biome_name) then
                -- show sun, moon, stars ... underground
                player_meta:set_int('everness_is_underground', 0)

                player:set_sun({
                    visible = true
                })

                player:set_moon({
                    visible = true
                })

                player:set_stars({
                    visible = true,
                    sunrise_visible = true
                })
            end
        end

        timer = 0
    end
end)

minetest.register_on_joinplayer(function(player, last_login)
    local player_meta = player:get_meta()

    player_meta:set_string('everness_biome_name', '')
    player_meta:set_int('everness_is_underground', 0)
end)
