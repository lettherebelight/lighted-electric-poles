data:extend({
    {
        type = "item",
        name = "lighted-small-electric-pole",
        icon = "__LightedElectricPoles__/graphics/icons/small-electric-pole.png",
        flags = { "goes-to-quickbar" },
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-e[lighted-small-electric-pole]",
        place_result = "lighted-small-electric-pole",
        fuel_value = "4MJ",
        stack_size = 50
    },
    {
        type = "item",
        name = "lighted-medium-electric-pole",
        icon = "__LightedElectricPoles__/graphics/icons/medium-electric-pole.png",
        flags = { "goes-to-quickbar" },
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-f[lighted-medium-electric-pole-1]",
        place_result = "lighted-medium-electric-pole",
        stack_size = 50
    },
    {
        type = "item",
        name = "lighted-big-electric-pole",
        icon = "__LightedElectricPoles__/graphics/icons/big-electric-pole.png",
        flags = { "goes-to-quickbar" },
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-g[lighted-big-electric-pole-1]",
        place_result = "lighted-big-electric-pole",
        stack_size = 50
    },
    {
        type = "item",
        name = "lighted-substation",
        icon = "__LightedElectricPoles__/graphics/icons/substation.png",
        flags = { "goes-to-quickbar" },
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-h[lighted-substation-1]",
        place_result = "lighted-substation",
        stack_size = 50
    },
    {
        type = "item",
        name = "hidden-small-lamp",
        icon = "__base__/graphics/icons/small-lamp.png",
        flags = { "hidden" },
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-d[hidden-small-lamp]",
        place_result = "hidden-small-lamp",
        stack_size = 50
    },
    {
        type = "item",
        name = "attached-small-lamp",
        icon = "__base__/graphics/icons/small-lamp.png",
        flags = { "hidden" },
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-d[hidden-small-lamp]",
        place_result = "attached-small-lamp",
        stack_size = 50
    }
})

if bobmods.power then

    data:extend({
        {
            type = "item",
            name = "lighted-medium-electric-pole-2",
            icon = "__LightedElectricPoles__/graphics/icons/medium-electric-pole.png",
            flags = { "goes-to-quickbar" },
            subgroup = "energy-pipe-distribution",
            order = "a[energy]-f[lighted-medium-electric-pole-2]",
            place_result = "lighted-medium-electric-pole-2",
            stack_size = 50
        },
        {
            type = "item",
            name = "lighted-medium-electric-pole-3",
            icon = "__LightedElectricPoles__/graphics/icons/medium-electric-pole.png",
            flags = { "goes-to-quickbar" },
            subgroup = "energy-pipe-distribution",
            order = "a[energy]-f[lighted-medium-electric-pole-3]",
            place_result = "lighted-medium-electric-pole-3",
            stack_size = 50
        },
        {
            type = "item",
            name = "lighted-medium-electric-pole-4",
            icon = "__LightedElectricPoles__/graphics/icons/medium-electric-pole.png",
            flags = { "goes-to-quickbar" },
            subgroup = "energy-pipe-distribution",
            order = "a[energy]-f[lighted-medium-electric-pole-4]",
            place_result = "lighted-medium-electric-pole-4",
            stack_size = 50
        },
        {
            type = "item",
            name = "lighted-big-electric-pole-2",
            icon = "__LightedElectricPoles__/graphics/icons/big-electric-pole.png",
            flags = { "goes-to-quickbar" },
            subgroup = "energy-pipe-distribution",
            order = "a[energy]-g[lighted-big-electric-pole-2]",
            place_result = "lighted-big-electric-pole-2",
            stack_size = 50
        },
        {
            type = "item",
            name = "lighted-big-electric-pole-3",
            icon = "__LightedElectricPoles__/graphics/icons/big-electric-pole.png",
            flags = { "goes-to-quickbar" },
            subgroup = "energy-pipe-distribution",
            order = "a[energy]-g[lighted-big-electric-pole-3]",
            place_result = "lighted-big-electric-pole-3",
            stack_size = 50
        },
        {
            type = "item",
            name = "lighted-big-electric-pole-4",
            icon = "__LightedElectricPoles__/graphics/icons/big-electric-pole.png",
            flags = { "goes-to-quickbar" },
            subgroup = "energy-pipe-distribution",
            order = "a[energy]-g[lighted-big-electric-pole-4]",
            place_result = "lighted-big-electric-pole-4",
            stack_size = 50
        },
        {
            type = "item",
            name = "lighted-substation-2",
            icon = "__LightedElectricPoles__/graphics/icons/substation.png",
            flags = { "goes-to-quickbar" },
            subgroup = "energy-pipe-distribution",
            order = "a[energy]-h[lighted-substation-2]",
            place_result = "lighted-substation-2",
            stack_size = 50
        },
        {
            type = "item",
            name = "lighted-substation-3",
            icon = "__LightedElectricPoles__/graphics/icons/substation.png",
            flags = { "goes-to-quickbar" },
            subgroup = "energy-pipe-distribution",
            order = "a[energy]-h[lighted-substation-3]",
            place_result = "lighted-substation-3",
            stack_size = 50
        },
        {
            type = "item",
            name = "lighted-substation-4",
            icon = "__LightedElectricPoles__/graphics/icons/substation.png",
            flags = { "goes-to-quickbar" },
            subgroup = "energy-pipe-distribution",
            order = "a[energy]-h[lighted-substation-4]",
            place_result = "lighted-substation-4",
            stack_size = 50
        }
    })
end