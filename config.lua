Config = {}

Config.RestrictedCategories = { "vip", "emergency" }

Config.WorkShops = {
    {
        job = "mechanic", -- false if you dont want to use the job
        pos = vector3(-208.1416, -1327.2565, 30.7101),
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


SVConfig = {}

SVConfig.EnableESXSocietyPayment = true

SVConfig.Webhook = {
    botname = "Menu Custom Véhicules",
    colors = { red = 16711680, blue = 255, yellow = 16776960, orange = 16744192, green = 65280},
    list = {
        ["mechanic"] = "https://discord.com/api/webhooks/1180122391800709190/TKhg99cAO5ARKg_q5RSqr9tWxW00djtV0WOaUnmLEVX9X7Jdts6UgXxEyryd8aQOiu9a",
        ["mechanic2"] = "https://discord.com/api/webhooks/1180122699150938122/_gYehWGjnRt7lI3jS3w6rXIw4WMt2jVU5KD8i3sswsv2DhY_tUY_nuf6UfTfICULj3da",
        ["admin"] = "https://discord.com/api/webhooks/1180122876058288168/awycaru_9o__z-2bv9sGxi4Lcw6y75URycvfM042hSRvUnOgolYJ4uXaz177yd_eJsB-",
    }
}

return SVConfig
