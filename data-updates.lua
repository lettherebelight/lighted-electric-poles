-- Add the recipes for Bob's variants
require("prototypes.recipe-updates")

-- Enable vanilla recipes
table.insert(data.raw["technology"]["optics"].effects, { type = "unlock-recipe", recipe = "lighted-small-electric-pole" })
table.insert(data.raw["technology"]["electric-energy-distribution-1"].effects, { type = "unlock-recipe", recipe = "lighted-medium-electric-pole" })
table.insert(data.raw["technology"]["electric-energy-distribution-1"].effects, { type = "unlock-recipe", recipe = "lighted-big-electric-pole" })
table.insert(data.raw["technology"]["electric-energy-distribution-2"].effects, { type = "unlock-recipe", recipe = "lighted-substation" })

-- Enable recipes for lighted versions if Bob's Power is enabled
if bobmods.power then
    table.insert(data.raw["technology"]["electric-pole-2"].effects, { type = "unlock-recipe", recipe = "lighted-medium-electric-pole-2" })
    table.insert(data.raw["technology"]["electric-pole-3"].effects, { type = "unlock-recipe", recipe = "lighted-medium-electric-pole-3" })
    table.insert(data.raw["technology"]["electric-pole-4"].effects, { type = "unlock-recipe", recipe = "lighted-medium-electric-pole-4" })

    table.insert(data.raw["technology"]["electric-pole-2"].effects, { type = "unlock-recipe", recipe = "lighted-big-electric-pole-2" })
    table.insert(data.raw["technology"]["electric-pole-3"].effects, { type = "unlock-recipe", recipe = "lighted-big-electric-pole-3" })
    table.insert(data.raw["technology"]["electric-pole-4"].effects, { type = "unlock-recipe", recipe = "lighted-big-electric-pole-4" })

    table.insert(data.raw["technology"]["electric-substation-2"].effects, { type = "unlock-recipe", recipe = "lighted-substation-2" })
    table.insert(data.raw["technology"]["electric-substation-3"].effects, { type = "unlock-recipe", recipe = "lighted-substation-3" })
    table.insert(data.raw["technology"]["electric-substation-4"].effects, { type = "unlock-recipe", recipe = "lighted-substation-4" })
end


-- ShinyBob settings
if poles_graphics_icons then
    data.raw["electric-pole"]["lighted-medium-electric-pole"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-medium-electric-pole.png"
    data.raw["electric-pole"]["lighted-big-electric-pole"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-big-electric-pole.png"
    data.raw["electric-pole"]["lighted-substation"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-substation.png"

    data.raw["item"]["lighted-medium-electric-pole"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-medium-electric-pole.png"
    data.raw["item"]["lighted-big-electric-pole"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-big-electric-pole.png"
    data.raw["item"]["lighted-substation"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-substation.png"

    if bobmods.power then
        data.raw["electric-pole"]["lighted-medium-electric-pole-2"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-medium-electric-pole-2.png"
        data.raw["electric-pole"]["lighted-medium-electric-pole-3"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-medium-electric-pole-3.png"
        data.raw["electric-pole"]["lighted-medium-electric-pole-4"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-medium-electric-pole-4.png"

        data.raw["electric-pole"]["lighted-big-electric-pole-2"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-big-electric-pole-2.png"
        data.raw["electric-pole"]["lighted-big-electric-pole-3"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-big-electric-pole-3.png"
        data.raw["electric-pole"]["lighted-big-electric-pole-4"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-big-electric-pole-4.png"

        data.raw["electric-pole"]["lighted-substation-2"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-substation-2.png"
        data.raw["electric-pole"]["lighted-substation-3"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-substation-3.png"
        data.raw["electric-pole"]["lighted-substation-4"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-substation-4.png"


        data.raw["item"]["lighted-medium-electric-pole-2"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-medium-electric-pole-2.png"
        data.raw["item"]["lighted-medium-electric-pole-3"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-medium-electric-pole-3.png"
        data.raw["item"]["lighted-medium-electric-pole-4"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-medium-electric-pole-4.png"

        data.raw["item"]["lighted-big-electric-pole-2"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-big-electric-pole-2.png"
        data.raw["item"]["lighted-big-electric-pole-3"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-big-electric-pole-3.png"
        data.raw["item"]["lighted-big-electric-pole-4"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-big-electric-pole-4.png"

        data.raw["item"]["lighted-substation-2"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-substation-2.png"
        data.raw["item"]["lighted-substation-3"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-substation-3.png"
        data.raw["item"]["lighted-substation-4"].icon = "__LightedElectricPoles__/graphics/icons/shinybob-substation-4.png"
    end
end

if poles_graphics then

    data.raw["electric-pole"]["lighted-medium-electric-pole"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/medium-electric-pole.png"
    data.raw["electric-pole"]["lighted-big-electric-pole"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/big-electric-pole.png"
    data.raw["electric-pole"]["lighted-substation"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/substation.png"

    if bobmods.power then
        data.raw["electric-pole"]["lighted-medium-electric-pole-2"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/medium-electric-pole-2.png"
        data.raw["electric-pole"]["lighted-medium-electric-pole-3"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/medium-electric-pole-3.png"
        data.raw["electric-pole"]["lighted-medium-electric-pole-4"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/medium-electric-pole-4.png"

        data.raw["electric-pole"]["lighted-big-electric-pole-2"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/big-electric-pole-2.png"
        data.raw["electric-pole"]["lighted-big-electric-pole-3"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/big-electric-pole-3.png"
        data.raw["electric-pole"]["lighted-big-electric-pole-4"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/big-electric-pole-4.png"

        data.raw["electric-pole"]["lighted-substation-2"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/substation-2.png"
        data.raw["electric-pole"]["lighted-substation-3"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/substation-3.png"
        data.raw["electric-pole"]["lighted-substation-4"].pictures["filename"] = "__ShinyBob__/graphics/entity/poles/substation-4.png"
    end
end








