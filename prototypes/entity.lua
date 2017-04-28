

-- Vanilla poles
local lighted_small_pole = copy_prototype("electric-pole", "small-electric-pole", "lighted-small-electric-pole", "__LightedElectricPoles__/graphics/icons/small-electric-pole.png")
local lighted_medium_pole = copy_prototype("electric-pole", "medium-electric-pole", "lighted-medium-electric-pole", "__LightedElectricPoles__/graphics/icons/medium-electric-pole.png")
local lighted_big_pole = copy_prototype("electric-pole", "big-electric-pole", "lighted-big-electric-pole", "__LightedElectricPoles__/graphics/icons/big-electric-pole.png")
local lighted_substation = copy_prototype("electric-pole", "substation", "lighted-substation", "__LightedElectricPoles__/graphics/icons/substation.png")
data:extend({ lighted_small_pole, lighted_medium_pole, lighted_big_pole, lighted_substation })

-- Bob's variants
if bobmods and bobmods.power then
    local lighted_med_pole_2 = copy_prototype("electric-pole", "medium-electric-pole-2", "lighted-medium-electric-pole-2", "__LightedElectricPoles__/graphics/icons/medium-electric-pole.png")
    local lighted_med_pole_3 = copy_prototype("electric-pole", "medium-electric-pole-3", "lighted-medium-electric-pole-3", "__LightedElectricPoles__/graphics/icons/medium-electric-pole.png")
    local lighted_med_pole_4 = copy_prototype("electric-pole", "medium-electric-pole-4", "lighted-medium-electric-pole-4", "__LightedElectricPoles__/graphics/icons/medium-electric-pole.png")

    local lighted_big_pole_2 = copy_prototype("electric-pole", "big-electric-pole-2", "lighted-big-electric-pole-2", "__LightedElectricPoles__/graphics/icons/big-electric-pole.png")
    local lighted_big_pole_3 = copy_prototype("electric-pole", "big-electric-pole-3", "lighted-big-electric-pole-3", "__LightedElectricPoles__/graphics/icons/big-electric-pole.png")
    local lighted_big_pole_4 = copy_prototype("electric-pole", "big-electric-pole-4", "lighted-big-electric-pole-4", "__LightedElectricPoles__/graphics/icons/big-electric-pole.png")

    local lighted_substation_2 = copy_prototype("electric-pole", "substation-2", "lighted-substation-2", "__LightedElectricPoles__/graphics/icons/substation.png")
    local lighted_substation_3 = copy_prototype("electric-pole", "substation-3", "lighted-substation-3", "__LightedElectricPoles__/graphics/icons/substation.png")
    local lighted_substation_4 = copy_prototype("electric-pole", "substation-4", "lighted-substation-4", "__LightedElectricPoles__/graphics/icons/substation.png")

    data:extend({ lighted_med_pole_2, lighted_med_pole_3, lighted_med_pole_4, lighted_big_pole_2, lighted_big_pole_3, lighted_big_pole_4, lighted_substation_2, lighted_substation_3, lighted_substation_4 })
end


-- Two new lamp types which are not selectable in the game.  The attached verison will be visable when placing the pole and the hidden version will not.
data:extend({
    {
        type = "lamp",
        name = "attached-small-lamp",
        icon = "__base__/graphics/icons/small-lamp.png",
        flags = { "placeable-off-grid" },
        minable = { minable = false, hardness = 0.2, mining_time = 0.5 },
        selectable_in_game = false,
        max_health = 55,
        corpse = "small-remnants",
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_usage_per_tick = "5KW",
        light = { intensity = 0.9, size = 40 },
        picture_off =
        {
            filename = "__base__/graphics/entity/small-lamp/light-off.png",
            priority = "high",
            width = 67,
            height = 58,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = { 0.078125, -0.03125 },
        },
        picture_on =
        {
            filename = "__base__/graphics/entity/small-lamp/light-on-patch.png",
            priority = "high",
            width = 62,
            height = 62,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = { 0.0625, -0.21875 },
        },
        circuit_wire_connection_point =
        {
            shadow =
            {
                red = { 0.759375, -0.096875 },
                green = { 0.759375, -0.096875 },
            },
            wire =
            {
                red = { 0.30625, -0.39375 },
                green = { 0.30625, -0.39375 },
            }
        },
        circuit_wire_max_distance = 0
    },
    {
        type = "lamp",
        name = "hidden-small-lamp",
        icon = "__base__/graphics/icons/small-lamp.png",
        flags = { "placeable-off-grid", "not-on-map" },
        minable = { hardness = 0.2, mining_time = 0.5, result = "stone-brick" },
        selectable_in_game = false,
        max_health = 55,
        corpse = "small-remnants",
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input"
        },
        energy_usage_per_tick = "5KW",
        light = { intensity = 0.9, size = 40 },
        picture_off =
        {
            filename = "__base__/graphics/entity/small-lamp/light-off.png",
            priority = "high",
            width = 0,
            height = 0,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = { -0.015625, 0.15625 },
        },
        picture_on =
        {
            filename = "__base__/graphics/entity/small-lamp/light-on-patch.png",
            priority = "high",
            width = 0,
            height = 0,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = { -0.03125, -0.03125 },
        },
        circuit_wire_connection_point =
        {
            shadow =
            {
                red = { 0.759375, -0.096875 },
                green = { 0.759375, -0.096875 },
            },
            wire =
            {
                red = { 0.30625, -0.39375 },
                green = { 0.30625, -0.39375 },
            }
        },
        circuit_wire_max_distance = 0
    }
})