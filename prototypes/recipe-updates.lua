
-- Deferring this until the update phase because the recipes undergo different revisions in Bob's mods
-- depending which mods are installed.  We want to copy whatever the final verison is
if bobmods.power then

    -- Snarfed from ShinyBob
    -- Bob Electronics, replace electronic board with circuit board to allow lamps to be built earlier
    if data.raw.item["basic-circuit-board"] then
        log("Replacing circuit boards")
        bobmods.lib.recipe.replace_ingredient("small-lamp", "electronic-circuit", "basic-circuit-board")
    end

    -- The recipes are the same except we'll replace the previous tier ingfredient with the lighted version
    local lighted_med_pole_2 = copy_prototype("recipe", "medium-electric-pole-2", "lighted-medium-electric-pole-2")
    local lighted_med_pole_3 = copy_prototype("recipe", "medium-electric-pole-3", "lighted-medium-electric-pole-3")
    local lighted_med_pole_4 = copy_prototype("recipe", "medium-electric-pole-4", "lighted-medium-electric-pole-4")

    local lighted_big_pole_2 = copy_prototype("recipe", "big-electric-pole-2", "lighted-big-electric-pole-2")
    local lighted_big_pole_3 = copy_prototype("recipe", "big-electric-pole-3", "lighted-big-electric-pole-3")
    local lighted_big_pole_4 = copy_prototype("recipe", "big-electric-pole-4", "lighted-big-electric-pole-4")

    local lighted_substation_2 = copy_prototype("recipe", "substation-2", "lighted-substation-2")
    local lighted_substation_3 = copy_prototype("recipe", "substation-3", "lighted-substation-3")
    local lighted_substation_4 = copy_prototype("recipe", "substation-4", "lighted-substation-4")

    data:extend({ lighted_med_pole_2, lighted_med_pole_3, lighted_med_pole_4, lighted_big_pole_2, lighted_big_pole_3, lighted_big_pole_4, lighted_substation_2, lighted_substation_3, lighted_substation_4 })

    -- safe to use because bobmods.power requires bobmods.lib
    bobmods.lib.recipe.replace_ingredient("lighted-medium-electric-pole-2", "medium-electric-pole", "lighted-medium-electric-pole")
    bobmods.lib.recipe.replace_ingredient("lighted-medium-electric-pole-3", "medium-electric-pole-2", "lighted-medium-electric-pole-2")
    bobmods.lib.recipe.replace_ingredient("lighted-medium-electric-pole-4", "medium-electric-pole-3", "lighted-medium-electric-pole-3")

    bobmods.lib.recipe.replace_ingredient("lighted-big-electric-pole-2", "big-electric-pole", "lighted-big-electric-pole")
    bobmods.lib.recipe.replace_ingredient("lighted-big-electric-pole-3", "big-electric-pole-2", "lighted-big-electric-pole-2")
    bobmods.lib.recipe.replace_ingredient("lighted-big-electric-pole-4", "big-electric-pole-3", "lighted-big-electric-pole-3")

    bobmods.lib.recipe.replace_ingredient("lighted-substation-2", "substation",   "lighted-substation")
    bobmods.lib.recipe.replace_ingredient("lighted-substation-3", "substation-2", "lighted-substation-2")
    bobmods.lib.recipe.replace_ingredient("lighted-substation-4", "substation-3", "lighted-substation-3")
end