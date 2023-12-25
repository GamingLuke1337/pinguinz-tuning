Config = {}

Config.RestrictedCategories = { "vip", "emergency" }

Config.WorkShops = {
    {
        job = "mechanic", -- false if you dont want to use the job
        pos = vector3(144.6111, -3030.5039, 7.0421),
        blip = {
            enable = false,
            name   = "Benny's Custom",
            type   = 566,
            scale  = 0.8,
            color  = 5,
        },
        marker = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 100, b = 50, alpha = 200},
        },
    },
    {
        job = "mechanic2", -- false if you dont want to use the job
        pos = vector3(1174.7396, 2640.5923, 37.4932),
        blip = {
            enable = false,
            name   = "Harmony Custom",
            type   = 566,
            scale  = 0.8,
            color  = 5,
        },
        marker = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 100, b = 50, alpha = 200},
        },
    },
    {
        job = "admin", -- false if you dont want to use the job
        pos = vector3(26.3746, -920.4341, 122.8173),
        blip = {
            enable = false,
            name   = "Admin Custom",
            type   = 566,
            scale  = 0.8,
            color  = 5,
        },
        marker = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 100, b = 50, alpha = 200},
        },
    },
}

return Config
