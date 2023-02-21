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

--- Base class
---@class Everness
---@field bamboo {['growth_stages']: table<number, table>, ['top_leaves_schem']: table}
---@field loot_chest {['default']: table[]}
---@field skybox {['skybox']: table}
Everness = {
    bamboo = {
        -- based on height
        growth_stages = {
            --height
            [1] = {
                -- next plant
                { name = 'everness:bamboo_1' },
                { name = 'everness:bamboo_2' },
            },
            [2] = {
                { name = 'everness:bamboo_1' },
                { name = 'everness:bamboo_2' },
                { name = 'everness:bamboo_2' },
            },
            [3] = {
                { name = 'everness:bamboo_3' },
                { name = 'everness:bamboo_4' },
                { name = 'everness:bamboo_4' },
                { name = 'everness:bamboo_5' },
            },
            [4] = {
                { name = 'everness:bamboo_3' },
                { name = 'everness:bamboo_3' },
                { name = 'everness:bamboo_4' },
                { name = 'everness:bamboo_5' },
                { name = 'everness:bamboo_5' },
            },
        },
        top_leaves_schem = {
            { name = 'everness:bamboo_4' },
            { name = 'everness:bamboo_5' },
            { name = 'everness:bamboo_5' },
        }
    },
    loot_chest = {
        default = {
            {
                name = 'default:stick',
                max_count = 25,
                chance = 25
            },
            {
                name = 'default:paper',
                max_count = 10,
                chance = 25
            },
            {
                name = 'default:book',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:skeleton_key',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:flint',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:obsidian_shard',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:clay_brick',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:mese_crystal_fragment',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:gold_ingot',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:bronze_ingot',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:tin_ingot',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:copper_ingot',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:steel_ingot',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:coal_lump',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:pick_stone',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:pick_bronze',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:pick_steel',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:shovel_stone',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:shovel_bronze',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:shovel_steel',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:axe_stone',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:axe_bronze',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:axe_steel',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sword_stone',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sword_bronze',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sword_steel',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:bookshelf',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sign_wall_wood',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:ladder_wood',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:ladder_steel',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:glass',
                max_count = 10,
                chance = 25
            },
            {
                name = 'default:obsidian_glass',
                max_count = 10,
                chance = 25
            },
            {
                name = 'default:tree',
                max_count = 15,
                chance = 25
            },
            {
                name = 'default:jungletree',
                max_count = 15,
                chance = 25
            },
            {
                name = 'default:pine_tree',
                max_count = 15,
                chance = 25
            },
            {
                name = 'default:cactus',
                max_count = 20,
                chance = 25
            },
            {
                name = 'default:large_cactus_seedling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:papyrus',
                max_count = 20,
                chance = 25
            },
            {
                name = 'default:junglegrass',
                max_count = 20,
                chance = 25
            },
            {
                name = 'default:blueberry_bush_sapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:junglesapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:pine_sapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:acacia_sapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:aspen_sapling',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:clay_lump',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:tin_lump',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:copper_lump',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:iron_lump',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:coalblock',
                max_count = 5,
                chance = 25
            },
            {
                name = 'default:steelblock',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:copperblock',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:tinblock',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:bronzeblock',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:mese',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:meselamp',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:obsidian',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:mese_crystal',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:diamond',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:pick_mese',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:shovel_mese',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:axe_mese',
                max_count = 2,
                chance = 25
            },
            {
                name = 'default:sword_mese',
                max_count = 2,
                chance = 25
            },
            {
                name = 'everness:forsaken_fire',
                max_count = 1,
                chance = 50
            },
        }
    },
    skybox = {
        biomes = {
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
                        day_sky = '',
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
            everness_coral_forest_dunes = {
                sky_parameters = {
                    type = 'regular',
                    sky_color = {
                        -- day_sky = '#c492a5',
                        day_sky = '',
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
            everness_coral_forest_ocean = {
                sky_parameters = {
                    type = 'regular',
                    sky_color = {
                        -- day_sky = '#c492a5',
                        day_sky = '',
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
            everness_coral_forest_under = {
                sky_parameters = {
                    type = 'regular',
                    sky_color = {
                        -- day_sky = '#c492a5',
                        day_sky = '',
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
                        day_sky = '',
                        day_horizon = '#7df37d',
                        -- dawn_sky = '#79ef79',
                        dawn_sky = '',
                        dawn_horizon = '#7ef47e',
                        -- night_sky = '#158b15',
                        night_sky = '',
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
                        day_sky = '',
                        day_horizon = '#7df37d',
                        -- dawn_sky = '#79ef79',
                        dawn_sky = '',
                        dawn_horizon = '#7ef47e',
                        -- night_sky = '#158b15',
                        night_sky = '',
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
                        day_sky = '',
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
                        day_sky = '',
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
                        day_sky = '',
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
                        day_sky = '',
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
                        day_sky = '',
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
                }
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
                }
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
                }
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
                }
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
                }
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
            },
        }
    },
    settings = {
        biomes = {
            everness_coral_forest = {
                enabled = minetest.settings:get_bool('everness_coral_forest', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_y_min')) or 6,
            },
            everness_coral_forest_dunes = {
                enabled = minetest.settings:get_bool('everness_coral_forest_dunes', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_dunes_y_max')) or 5,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_dunes_y_min')) or 4,
            },
            everness_coral_forest_ocean = {
                enabled = minetest.settings:get_bool('everness_coral_forest_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_ocean_y_max')) or 3,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_ocean_y_min')) or -255,
            },
            everness_coral_forest_under = {
                enabled = minetest.settings:get_bool('everness_coral_forest_under', true),
                y_max = tonumber(minetest.settings:get('everness_coral_forest_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_coral_forest_under_y_min')) or -31000,
            },
            everness_frosted_icesheet = {
                enabled = minetest.settings:get_bool('everness_frosted_icesheet', true),
                y_max = tonumber(minetest.settings:get('everness_frosted_icesheet_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_frosted_icesheet_y_min')) or -8,
            },
            everness_frosted_icesheet_ocean = {
                enabled = minetest.settings:get_bool('everness_frosted_icesheet_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_frosted_icesheet_ocean_y_max')) or -9,
                y_min = tonumber(minetest.settings:get('everness_frosted_icesheet_ocean_y_min')) or -255,
            },
            everness_frosted_icesheet_under = {
                enabled = minetest.settings:get_bool('everness_frosted_icesheet_under', true),
                y_max = tonumber(minetest.settings:get('everness_frosted_icesheet_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_frosted_icesheet_under_y_min')) or -31000,
            },
            everness_cursed_lands = {
                enabled = minetest.settings:get_bool('everness_cursed_lands', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_y_min')) or 6,
            },
            everness_cursed_lands_dunes = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_dunes', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_dunes_y_max')) or 5,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_dunes_y_min')) or 1,
            },
            everness_cursed_lands_swamp = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_swamp', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_swamp_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_swamp_y_min')) or -1,
            },
            everness_cursed_lands_ocean = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_ocean_y_max')) or -2,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_ocean_y_min')) or -255,
            },
            everness_cursed_lands_under = {
                enabled = minetest.settings:get_bool('everness_cursed_lands_under', true),
                y_max = tonumber(minetest.settings:get('everness_cursed_lands_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_cursed_lands_under_y_min')) or -31000,
            },
            everness_crystal_forest = {
                enabled = minetest.settings:get_bool('everness_crystal_forest', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_y_min')) or 6,
            },
            everness_crystal_forest_dunes = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_dunes', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_dunes_y_max')) or 5,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_dunes_y_min')) or 1,
            },
            everness_crystal_forest_shore = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_shore', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_shore_y_max')) or 0,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_shore_y_min')) or -1,
            },
            everness_crystal_forest_ocean = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_ocean_y_max')) or -2,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_ocean_y_min')) or -255,
            },
            everness_crystal_forest_under = {
                enabled = minetest.settings:get_bool('everness_crystal_forest_under', true),
                y_max = tonumber(minetest.settings:get('everness_crystal_forest_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_crystal_forest_under_y_min')) or -31000,
            },
            everness_bamboo_forest = {
                enabled = minetest.settings:get_bool('everness_bamboo_forest', true),
                y_max = tonumber(minetest.settings:get('everness_bamboo_forest_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_bamboo_forest_y_min')) or 1,
            },
            everness_bamboo_forest_under = {
                enabled = minetest.settings:get_bool('everness_bamboo_forest_under', true),
                y_max = tonumber(minetest.settings:get('everness_bamboo_forest_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_bamboo_forest_under_y_min')) or -31000,
            },
            everness_forsaken_desert = {
                enabled = minetest.settings:get_bool('everness_forsaken_desert', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_desert_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_forsaken_desert_y_min')) or 4,
            },
            everness_forsaken_desert_ocean = {
                enabled = minetest.settings:get_bool('everness_forsaken_desert_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_desert_ocean_y_max')) or 3,
                y_min = tonumber(minetest.settings:get('everness_forsaken_desert_ocean_y_min')) or -8,
            },
            everness_forsaken_desert_under = {
                enabled = minetest.settings:get_bool('everness_forsaken_desert_under', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_desert_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_forsaken_desert_under_y_min')) or -31000,
            },
            everness_baobab_savanna = {
                enabled = minetest.settings:get_bool('everness_baobab_savanna', true),
                y_max = tonumber(minetest.settings:get('everness_baobab_savanna_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_baobab_savanna_y_min')) or 1,
            },
            everness_forsaken_tundra = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_y_max')) or 31000,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_y_min')) or 2,
            },
            everness_forsaken_tundra_beach = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra_beach', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_beach_y_max')) or 1,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_beach_y_min')) or -3,
            },
            everness_forsaken_tundra_ocean = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra_ocean', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_ocean_y_max')) or -4,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_ocean_y_min')) or -255,
            },
            everness_forsaken_tundra_under = {
                enabled = minetest.settings:get_bool('everness_forsaken_tundra_under', true),
                y_max = tonumber(minetest.settings:get('everness_forsaken_tundra_under_y_max')) or -256,
                y_min = tonumber(minetest.settings:get('everness_forsaken_tundra_under_y_min')) or -31000,
            },
        }
    },
}

function Everness.grow_cactus(self, pos, node, params)
    if node.param2 >= 4 then
        return
    end

    pos.y = pos.y - 1

    if minetest.get_item_group(minetest.get_node(pos).name, 'mold_soil') == 0
        or minetest.get_item_group(minetest.get_node(pos).name, 'sand') == 0
    then
        return
    end

    pos.y = pos.y + 1

    local height = 0

    while (node.name == 'everness:cactus_orange' or node.name == 'everness:cactus_blue') and height < 5 do
        height = height + 1
        pos.y = pos.y + 1
        node = minetest.get_node(pos)
    end

    if height == 5 or node.name ~= 'air' then
        return
    end

    if minetest.get_node_light(pos) < 13 then
        return
    end

    minetest.set_node(pos, { name = node.name })

    return true
end

function Everness.emerge_area(self, blockpos, action, calls_remaining, param)
    if not param.total then
        param.total = calls_remaining + 1
        param.current = 0
    end

    param.current = param.current + 1

    if param.total == param.current then
        param.callback(param.data)
    end
end

-- how often node timers for plants will tick, +/- some random value
function Everness.tick_vine(self, pos)
    minetest.get_node_timer(pos):start(math.random(5, 10))
end

-- how often a growth failure tick is retried (e.g. too dark)
function Everness.tick_vine_again(self, pos)
    minetest.get_node_timer(pos):start(math.random(40, 80))
end

-- how often node timers for plants will tick, +/- some random value
function Everness.tick_sulfur_stone(self, pos)
    minetest.get_node_timer(pos):start(math.random(5, 10))
end

-- how often a growth failure tick is retried (e.g. too dark)
function Everness.tick_sulfur_stone_again(self, pos)
    minetest.get_node_timer(pos):start(math.random(40, 80))
end

function Everness.grow_vine(self, pos, elapsed, params)
    local node = minetest.get_node(pos)
    local pos_under = vector.new(pos.x, pos.y - 1, pos.z)
    local node_under = minetest.get_node(pos_under)
    local node_names = params.node_names
    local end_node_name = params.end_node_name
    local end_node_param2 = params.end_node_param2

    -- get length
    local length = 0
    local temp_node = node

    while minetest.get_item_group(temp_node.name, 'vine') > 0 and length < 16 do
        length = length + 1
        temp_node = minetest.get_node(vector.new(pos.x, pos.y + length, pos.z))
    end

    -- stop growing - random height between 12 - 16 nodes
    if length > 11 and length < 16 then
        if math.random(1, 3) == 2 then
            return
        end
    end

    if length >= 16 then
        return
    end

    if minetest.get_item_group(node_under.name, 'vine') > 0 then
        -- stop timer for gown vine
        return
    end

    if node_under.name ~= 'air' then
        Everness:tick_vine_again(pos)
        return
    end

    local new_node_name = node_names[math.random(1, #node_names)]

    minetest.set_node(pos, { name = new_node_name, param2 = node.param2 })
    -- last hanging vine
    minetest.set_node(pos_under, { name = end_node_name, param2 = end_node_param2 and end_node_param2 or node.param2 })

    Everness:tick_vine(pos_under)
end

function Everness.dig_vine(self, pos, node_name, digger)
    --only dig give the vine if shears are used
    if not digger then
        return
    end

    local wielded_item = digger:get_wielded_item()

    if 'everness:vine_shears' == wielded_item:get_name() then
        local inv = digger:get_inventory()

        if inv then
            inv:add_item('main', ItemStack(node_name))
        end
    end
end

--
-- Sounds
--

function Everness.node_sound_defaults(table)
    table = table or {}
    table.footstep = table.footstep or
            { name = '', gain = 1.0 }
    table.dug = table.dug or
            { name = 'default_dug_node', gain = 0.25 }
    table.place = table.place or
            { name = 'default_place_node_hard', gain = 1.0 }
    return table
end

function Everness.node_sound_frosted_snow_defaults(table)
    table = table or {}
    table.footstep = table.footstep or
            { name = 'everness_frosted_snow_footstep', gain = 0.2 }
    table.dig = table.dig or
            { name = 'everness_frosted_snow_footstep', gain = 0.3 }
    table.dug = table.dug or
            { name = 'everness_frosted_snow_footstep', gain = 0.3 }
    table.place = table.place or
            { name = 'default_place_node', gain = 1.0 }
    default.node_sound_defaults(table)
    return table
end

function Everness.node_sound_crystal_defaults(table)
    table = table or {}
    table.footstep = table.footstep or
            { name = 'everness_crystal_chime', gain = 0.2 }
    table.dig = table.dig or
            { name = 'everness_crystal_chime', gain = 0.3 }
    table.dug = table.dug or
            { name = 'default_hard_footstep', gain = 0.3 }
    table.place = table.place or
            { name = 'everness_crystal_chime', gain = 1.0 }
    default.node_sound_defaults(table)
    return table
end

function Everness.node_sound_bamboo_defaults(table)
    table = table or {}
    table.footstep = table.footstep or
            { name = 'everness_bamboo_hit', gain = 0.2 }
    table.dig = table.dig or
            { name = 'everness_bamboo_hit', gain = 0.3 }
    table.dug = table.dug or
            { name = 'everness_bamboo_dug', gain = 0.1 }
    table.place = table.place or
            { name = 'everness_bamboo_hit', gain = 1.0 }
    default.node_sound_defaults(table)
    return table
end

function Everness.node_sound_mud_defaults(table)
    table = table or {}
    table.footstep = table.footstep or
            { name = 'everness_mud_footstep', gain = 0.2 }
    table.dig = table.dig or
            { name = 'everness_mud_footstep', gain = 0.3 }
    table.dug = table.dug or
            { name = 'everness_mud_footstep', gain = 0.1 }
    table.place = table.place or
            { name = 'everness_mud_footstep', gain = 1.0 }
    default.node_sound_defaults(table)
    return table
end
