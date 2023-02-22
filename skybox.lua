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

local skybox_defs = {
    everness_cursed_lands = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#89adb1',
                day_horizon = '#a9cdd1',
                dawn_sky = '#a5c9cd',
                dawn_horizon = '#aaced2',
                night_sky = '#416569',
                night_horizon = '#6a8e92',
                indoors = '#4a6e72',
                fog_sun_tint = '#7ca0a4',
                fog_moon_tint = '#7da1a5'
            }
        },
        sun_parameters = {
            texture = 'everness_cursed_lands_sun.png',
            scale = 1.57,
            sunrise = 'everness_cursed_lands_sunrisebg.png',
            tonemap = 'everness_cursed_lands_sun_tonemap.png'
        },
        moon_parameters = {
            texture = 'everness_cursed_lands_moon.png',
            tonemap = 'everness_cursed_lands_moon_tonemap.png'
        },
        cloud_parameters = {
            density = 0.7,
            color = '#a9cdd1e5',
            speed = { x = -2, z = -2 }
        }
    },
    everness_cursed_lands_dunes = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#89adb1',
                day_horizon = '#a9cdd1',
                dawn_sky = '#a5c9cd',
                dawn_horizon = '#aaced2',
                night_sky = '#416569',
                night_horizon = '#6a8e92',
                indoors = '#4a6e72',
                fog_sun_tint = '#7ca0a4',
                fog_moon_tint = '#7da1a5'
            }
        },
        sun_parameters = {
            texture = 'everness_cursed_lands_sun.png',
            scale = 1.57,
            sunrise = 'everness_cursed_lands_sunrisebg.png',
            tonemap = 'everness_cursed_lands_sun_tonemap.png'
        },
        moon_parameters = {
            texture = 'everness_cursed_lands_moon.png',
            tonemap = 'everness_cursed_lands_moon_tonemap.png'
        },
        cloud_parameters = {
            density = 0.7,
            color = '#a9cdd1e5',
            speed = { x = -2, z = -2 }
        }
    },
    everness_cursed_lands_swamp = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#89adb1',
                day_horizon = '#a9cdd1',
                dawn_sky = '#a5c9cd',
                dawn_horizon = '#aaced2',
                night_sky = '#416569',
                night_horizon = '#6a8e92',
                indoors = '#4a6e72',
                fog_sun_tint = '#7ca0a4',
                fog_moon_tint = '#7da1a5'
            }
        },
        sun_parameters = {
            texture = 'everness_cursed_lands_sun.png',
            scale = 1.57,
            sunrise = 'everness_cursed_lands_sunrisebg.png',
            tonemap = 'everness_cursed_lands_sun_tonemap.png'
        },
        moon_parameters = {
            texture = 'everness_cursed_lands_moon.png',
            tonemap = 'everness_cursed_lands_moon_tonemap.png'
        },
        cloud_parameters = {
            density = 0.7,
            color = '#a9cdd1e5',
            speed = { x = -2, z = -2 }
        }
    },
    everness_cursed_lands_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#89adb1',
                day_horizon = '#a9cdd1',
                dawn_sky = '#a5c9cd',
                dawn_horizon = '#aaced2',
                night_sky = '#416569',
                night_horizon = '#6a8e92',
                indoors = '#4a6e72',
                fog_sun_tint = '#7ca0a4',
                fog_moon_tint = '#7da1a5'
            }
        },
        sun_parameters = {
            texture = 'everness_cursed_lands_sun.png',
            scale = 1.57,
            sunrise = 'everness_cursed_lands_sunrisebg.png',
            tonemap = 'everness_cursed_lands_sun_tonemap.png'
        },
        moon_parameters = {
            texture = 'everness_cursed_lands_moon.png',
            tonemap = 'everness_cursed_lands_moon_tonemap.png'
        },
        cloud_parameters = {
            density = 0.7,
            color = '#a9cdd1e5',
            speed = { x = -2, z = -2 }
        }
    },
    everness_cursed_lands_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#89adb1',
                day_horizon = '#a9cdd1',
                dawn_sky = '#a5c9cd',
                dawn_horizon = '#aaced2',
                night_sky = '#416569',
                night_horizon = '#6a8e92',
                indoors = '#4a6e72',
                fog_sun_tint = '#7ca0a4',
                fog_moon_tint = '#7da1a5'
            }
        },
        sun_parameters = {
            texture = 'everness_cursed_lands_sun.png',
            scale = 1.57,
            sunrise = 'everness_cursed_lands_sunrisebg.png',
            tonemap = 'everness_cursed_lands_sun_tonemap.png'
        },
        moon_parameters = {
            texture = 'everness_cursed_lands_moon.png',
            tonemap = 'everness_cursed_lands_moon_tonemap.png'
        },
        cloud_parameters = {
            density = 0.7,
            color = '#a9cdd1e5',
            speed = { x = -2, z = -2 }
        }
    },
    everness_coral_forest = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#c492a5',
                day_sky = '#61B5F5',
                day_horizon = '#e4b2c5',
                dawn_sky = '#e0aec1',
                dawn_horizon = '#e5b3c6',
                night_sky = '#7c4a5d',
                night_horizon = '#a57386',
                indoors = '#855366',
                fog_sun_tint = '#b78598',
                fog_moon_tint = '#b88699'
            }
        },
        sun_parameters = {
            texture = 'everness_coral_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_coral_forest_sun_tonemap.png'
        },
    },
    everness_coral_forest_dunes = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#c492a5',
                day_sky = '#61B5F5',
                day_horizon = '#e4b2c5',
                dawn_sky = '#e0aec1',
                dawn_horizon = '#e5b3c6',
                night_sky = '#7c4a5d',
                night_horizon = '#a57386',
                indoors = '#855366',
                fog_sun_tint = '#b78598',
                fog_moon_tint = '#b88699'
            }
        },
        sun_parameters = {
            texture = 'everness_coral_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_coral_forest_sun_tonemap.png'
        },
    },
    everness_coral_forest_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#c492a5',
                day_sky = '#61B5F5',
                day_horizon = '#e4b2c5',
                dawn_sky = '#e0aec1',
                dawn_horizon = '#e5b3c6',
                night_sky = '#7c4a5d',
                night_horizon = '#a57386',
                indoors = '#855366',
                fog_sun_tint = '#b78598',
                fog_moon_tint = '#b88699'
            }
        },
        sun_parameters = {
            texture = 'everness_coral_forest_sun.png',
            scale = 1.57,
            tonemap = 'everness_coral_forest_sun_tonemap.png'
        },
    },
    everness_coral_forest_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#c492a5',
                day_sky = '#61B5F5',
                day_horizon = '#e4b2c5',
                dawn_sky = '#e0aec1',
                dawn_horizon = '#e5b3c6',
                night_sky = '#7c4a5d',
                night_horizon = '#a57386',
                indoors = '#855366',
                fog_sun_tint = '#b78598',
                fog_moon_tint = '#b88699'
            }
        },
    },
    everness_bamboo_forest = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#5dd35d',
                day_sky = '#61B5F5',
                day_horizon = '#7df37d',
                -- dawn_sky = '#79ef79',
                dawn_sky = '#B4BAFA',
                dawn_horizon = '#7ef47e',
                -- night_sky = '#158b15',
                night_sky = '#006BFF',
                night_horizon = '#3eb43e',
                indoors = '#1e941e',
                fog_sun_tint = '#50c650',
                fog_moon_tint = '#51c751'
            }
        },
    },
    everness_bamboo_forest_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#5dd35d',
                day_sky = '#61B5F5',
                day_horizon = '#7df37d',
                -- dawn_sky = '#79ef79',
                dawn_sky = '#B4BAFA',
                dawn_horizon = '#7ef47e',
                -- night_sky = '#158b15',
                night_sky = '#006BFF',
                night_horizon = '#3eb43e',
                indoors = '#1e941e',
                fog_sun_tint = '#50c650',
                fog_moon_tint = '#51c751'
            }
        },
    },
    everness_frosted_icesheet = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#9da4aa',
                day_horizon = '#bdc4ca',
                dawn_sky = '#b9c0c6',
                dawn_horizon = '#bec5cb',
                night_sky = '#555c62',
                night_horizon = '#7e858b',
                indoors = '#5e656b',
                fog_sun_tint = '#90979d',
                fog_moon_tint = '#91989e'
            }
        },
    },
    everness_frosted_icesheet_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#9da4aa',
                day_horizon = '#bdc4ca',
                dawn_sky = '#b9c0c6',
                dawn_horizon = '#bec5cb',
                night_sky = '#555c62',
                night_horizon = '#7e858b',
                indoors = '#5e656b',
                fog_sun_tint = '#90979d',
                fog_moon_tint = '#91989e'
            }
        },
    },
    everness_frosted_icesheet_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#9da4aa',
                day_horizon = '#bdc4ca',
                dawn_sky = '#b9c0c6',
                dawn_horizon = '#bec5cb',
                night_sky = '#555c62',
                night_horizon = '#7e858b',
                indoors = '#5e656b',
                fog_sun_tint = '#90979d',
                fog_moon_tint = '#91989e'
            }
        },
    },
    everness_crystal_forest = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#b992c5',
                day_sky = '#61B5F5',
                day_horizon = '#d9b2e5',
                dawn_sky = '#d5aee1',
                dawn_horizon = '#dab3e6',
                night_sky = '#714a7d',
                night_horizon = '#9a73a6',
                indoors = '#7a5386',
                fog_sun_tint = '#ac85b8',
                fog_moon_tint = '#ad86b9'
            }
        },
        moon_parameters = {
            texture = 'everness_crystal_forest_moon.png',
            tonemap = 'everness_crystal_forest_moon_tonemap.png'
        },
        star_parameters = {
            count = 6000,
            scale = 0.5
        }
    },
    everness_crystal_forest_dunes = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#b992c5',
                day_sky = '#61B5F5',
                day_horizon = '#d9b2e5',
                dawn_sky = '#d5aee1',
                dawn_horizon = '#dab3e6',
                night_sky = '#714a7d',
                night_horizon = '#9a73a6',
                indoors = '#7a5386',
                fog_sun_tint = '#ac85b8',
                fog_moon_tint = '#ad86b9'
            }
        },
        moon_parameters = {
            texture = 'everness_crystal_forest_moon.png',
            tonemap = 'everness_crystal_forest_moon_tonemap.png'
        },
        star_parameters = {
            count = 6000,
            scale = 0.5
        }
    },
    everness_crystal_forest_shore = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#b992c5',
                day_sky = '#61B5F5',
                day_horizon = '#d9b2e5',
                dawn_sky = '#d5aee1',
                dawn_horizon = '#dab3e6',
                night_sky = '#714a7d',
                night_horizon = '#9a73a6',
                indoors = '#7a5386',
                fog_sun_tint = '#ac85b8',
                fog_moon_tint = '#ad86b9'
            }
        },
        moon_parameters = {
            texture = 'everness_crystal_forest_moon.png',
            tonemap = 'everness_crystal_forest_moon_tonemap.png'
        },
        star_parameters = {
            count = 6000,
            scale = 0.5
        }
    },
    everness_crystal_forest_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#b992c5',
                day_sky = '#61B5F5',
                day_horizon = '#d9b2e5',
                dawn_sky = '#d5aee1',
                dawn_horizon = '#dab3e6',
                night_sky = '#714a7d',
                night_horizon = '#9a73a6',
                indoors = '#7a5386',
                fog_sun_tint = '#ac85b8',
                fog_moon_tint = '#ad86b9'
            }
        },
        moon_parameters = {
            texture = 'everness_crystal_forest_moon.png',
            tonemap = 'everness_crystal_forest_moon_tonemap.png'
        },
        star_parameters = {
            count = 6000,
            scale = 0.5
        }
    },
    everness_crystal_forest_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                -- day_sky = '#b992c5',
                day_sky = '#61B5F5',
                day_horizon = '#d9b2e5',
                dawn_sky = '#d5aee1',
                dawn_horizon = '#dab3e6',
                night_sky = '#714a7d',
                night_horizon = '#9a73a6',
                indoors = '#7a5386',
                fog_sun_tint = '#ac85b8',
                fog_moon_tint = '#ad86b9'
            }
        },
        star_parameters = {
            count = 6000,
            scale = 0.5
        }
    },
    everness_forsaken_desert = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#d5946e',
                day_horizon = '#f5b48e',
                dawn_sky = '#f1b08a',
                dawn_horizon = '#f6b58f',
                night_sky = '#8d4c26',
                night_horizon = '#b6754f',
                indoors = '#96552f',
                fog_sun_tint = '#c88761',
                fog_moon_tint = '#c98862'
            }
        },
        sun_parameters = {
            texture = 'everness_forsaken_desert_sun.png',
            scale = 3.14,
            tonemap = 'everness_forsaken_desert_sun_tonemap.png'
        },
    },
    everness_forsaken_desert_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#d5946e',
                day_horizon = '#f5b48e',
                dawn_sky = '#f1b08a',
                dawn_horizon = '#f6b58f',
                night_sky = '#8d4c26',
                night_horizon = '#b6754f',
                indoors = '#96552f',
                fog_sun_tint = '#c88761',
                fog_moon_tint = '#c98862'
            }
        },
        sun_parameters = {
            texture = 'everness_forsaken_desert_sun.png',
            scale = 3.14,
            tonemap = 'everness_forsaken_desert_sun_tonemap.png'
        },
    },
    everness_forsaken_desert_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#d5946e',
                day_horizon = '#f5b48e',
                dawn_sky = '#f1b08a',
                dawn_horizon = '#f6b58f',
                night_sky = '#8d4c26',
                night_horizon = '#b6754f',
                indoors = '#96552f',
                fog_sun_tint = '#c88761',
                fog_moon_tint = '#c98862'
            }
        }
    },
    everness_baobab_savanna = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#c4a156',
                day_horizon = '#e4c176',
                dawn_sky = '#e0bd72',
                dawn_horizon = '#e5c277',
                night_sky = '#7c590e',
                night_horizon = '#a58237',
                indoors = '#856217',
                fog_sun_tint = '#b79449',
                fog_moon_tint = '#b8954a'
            }
        }
    },
    everness_forsaken_tundra = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#a3a49f',
                -- day_sky = '#caa339',
                day_horizon = '#eac359',
                dawn_sky = '#e6bf55',
                dawn_horizon = '#ebc45a',
                -- night_sky = '#5b5c57',
                night_sky = '#7c5b01',
                night_horizon = '#ab841a',
                indoors = '#896401',
                fog_sun_tint = '#bd962c',
                fog_moon_tint = '#be972d'
            }
        },
        sun_parameters = {
            texture = 'everness_forsaken_tundra_sun.png',
            scale = 1.57,
            tonemap = 'everness_forsaken_tundra_sun_tonemap.png'
        },
    },
    everness_forsaken_tundra_beach = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#a3a49f',
                -- day_sky = '#caa339',
                day_horizon = '#eac359',
                dawn_sky = '#e6bf55',
                dawn_horizon = '#ebc45a',
                -- night_sky = '#5b5c57',
                night_sky = '#7c5b01',
                night_horizon = '#ab841a',
                indoors = '#896401',
                fog_sun_tint = '#bd962c',
                fog_moon_tint = '#be972d'
            }
        },
        sun_parameters = {
            texture = 'everness_forsaken_tundra_sun.png',
            scale = 1.57,
            tonemap = 'everness_forsaken_tundra_sun_tonemap.png'
        },
    },
    everness_forsaken_tundra_ocean = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#a3a49f',
                -- day_sky = '#caa339',
                day_horizon = '#eac359',
                dawn_sky = '#e6bf55',
                dawn_horizon = '#ebc45a',
                -- night_sky = '#5b5c57',
                night_sky = '#7c5b01',
                night_horizon = '#ab841a',
                indoors = '#896401',
                fog_sun_tint = '#bd962c',
                fog_moon_tint = '#be972d'
            }
        },
        sun_parameters = {
            texture = 'everness_forsaken_tundra_sun.png',
            scale = 1.57,
            tonemap = 'everness_forsaken_tundra_sun_tonemap.png'
        },
    },
    everness_forsaken_tundra_under = {
        sky_parameters = {
            type = 'regular',
            sky_color = {
                day_sky = '#a3a49f',
                -- day_sky = '#caa339',
                day_horizon = '#eac359',
                dawn_sky = '#e6bf55',
                dawn_horizon = '#ebc45a',
                -- night_sky = '#5b5c57',
                night_sky = '#7c5b01',
                night_horizon = '#ab841a',
                indoors = '#896401',
                fog_sun_tint = '#bd962c',
                fog_moon_tint = '#be972d'
            }
        }
    }
}

local function should_flip(player)
    local player_meta = player:get_meta()
    local player_time = player_meta:get_int('everness_timeofday')
    -- 0 not defined (for player meta)
    -- 1 morning
    -- 2 afternoon
    local current_time = minetest.get_timeofday() < 0.5 and 1 or 2
    local flip = current_time ~= player_time

    player_meta:set_int('everness_timeofday', current_time)

    return {
        should_flip = flip,
        current_time = current_time
    }
end

local timer = 0

minetest.register_globalstep(function(dtime)
    timer = timer + dtime
    if timer > 5 then
        local players = minetest.get_connected_players()

        for _, player in ipairs(players) do
            if not player then
                return
            end

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

            local should_flip_data = should_flip(player)

            -- flip sun/moon when morning/afternoon
            if player_biome_name == biome_name and should_flip_data.should_flip then
                if skybox_defs[biome_name] then
                    if skybox_defs[biome_name].sun_parameters then
                        local sun_params = table.copy(skybox_defs[biome_name].sun_parameters)

                        if should_flip_data.current_time == 2 then
                            sun_params.texture = sun_params.texture .. '^[transformFY'
                        end

                        player:set_sun(sun_params)
                    end

                    -- if skybox_defs[biome_name].moon_parameters then
                    --     player:set_moon(skybox_defs[biome_name].moon_parameters)
                    -- else
                    --     player:set_moon()
                    -- end
                end
            end

            if player_biome_name ~= biome_name then
                player_meta:set_string('everness_biome_name', biome_name)

                if skybox_defs[biome_name] then
                    if skybox_defs[biome_name].sun_parameters then
                        local sun_params = table.copy(skybox_defs[biome_name].sun_parameters)

                        -- flip sun when afternoon
                        if should_flip_data.current_time == 2 then
                            sun_params.texture = sun_params.texture .. '^[transformFY'
                        end

                        player:set_sun(sun_params)
                    else
                        player:set_sun()
                    end

                    if skybox_defs[biome_name].moon_parameters then
                        player:set_moon(skybox_defs[biome_name].moon_parameters)
                    else
                        player:set_moon()
                    end

                    if skybox_defs[biome_name].sky_parameters then
                        player:set_sky(skybox_defs[biome_name].sky_parameters)
                    else
                        player:set_sky()
                    end

                    if skybox_defs[biome_name].cloud_parameters then
                        player:set_clouds(skybox_defs[biome_name].cloud_parameters)
                    else
                        player:set_clouds()
                    end

                    if skybox_defs[biome_name].star_parameters then
                        player:set_stars(skybox_defs[biome_name].star_parameters)
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
    player_meta:set_int('everness_timeofday', 0)
end)
