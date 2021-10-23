Config = {}

--- !(っ◕‿◕)っ Products!

Config.Products = {
    ["trojan_usb"] = {
        price = 2.500000,
    },
    ["security_card_01"] = {
        price = 5.000000,
    },
    ["security_card_02"] = {
        price = 5.000000,
    },
    ["drill"] = {
        price = 10.000000,
    },
    ["heavyarmor"] = {
        price = 15.000000,
    },
    ["screwdriverset"] = {
        price = 10.000000,
    },
    ["pistol_suppressor"] = {
        price = 100.000000,
    },
    ["pistol_extendedclip"] = {
        price = 100.000000,
    },
    ["pistol_ammo"] = {
        price = 100.000000,
    },
    ["thermite"] = {
        price = 10.000000,
    },
    ["advancedlockpick"] = {
        price = 10.000000,
    },
    ["WEAPON_PISTOL"] = {
        price = 500.000000,
    },
}

--- !(っ◕‿◕)っ Location Picker!

local setLocPick = math.random(1, 3)

Config.LocationSets = {
    [1] = {
        ["x"] = -320.8,
        ["y"] = 2818.71,
        ["z"] = 59.45,
        ["h"] = 328.8,
    },
    [2] = {
        ["x"] = -1915.66,
        ["y"] = -565.59,
        ["z"] = 20.47,
        ["h"] = 53.09,
    },
    [3] = {
        ["x"] = -1167.87,
        ["y"] = -476.27,
        ["z"] = 49.25,
        ["h"] = 132.81,
    },
} 

Config.Locations = {
    ["market"] = {
        ["label"] = "market",
        ["type"] = "mark",
        ["coords"] = {
            [1] = {
                ["x"] = tonumber(Config.LocationSets[setLocPick]["x"]),
                ["y"] = tonumber(Config.LocationSets[setLocPick]["y"]),
                ["z"] = tonumber(Config.LocationSets[setLocPick]["z"]),
                ["h"] = tonumber(Config.LocationSets[setLocPick]["h"]),
            },
        },
        ["products"] = Config.Products,
    },
}

--- !(っ◕‿◕)っ Shop Times!

Config.Open = 1

Config.Close = 12
