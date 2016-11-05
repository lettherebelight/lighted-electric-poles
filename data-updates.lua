data.raw["electric-pole"]["small-electric-pole"].fast_replaceable_group = "small-electric-pole"
data.raw["electric-pole"]["medium-electric-pole"].fast_replaceable_group = "medium-electric-pole"
data.raw["electric-pole"]["big-electric-pole"].fast_replaceable_group = "big-electric-pole"
data.raw["electric-pole"]["substation"].fast_replaceable_group = "substation"

table.insert(data.raw["technology"]["optics"].effects,{type="unlock-recipe",recipe="lighted-small-electric-pole"})

table.insert(data.raw["technology"]["electric-energy-distribution-1"].effects,{type="unlock-recipe",recipe="lighted-medium-electric-pole"})
table.insert(data.raw["technology"]["electric-energy-distribution-1"].effects,{type="unlock-recipe",recipe="lighted-big-electric-pole"})

table.insert(data.raw["technology"]["electric-energy-distribution-2"].effects,{type="unlock-recipe",recipe="lighted-substation"})