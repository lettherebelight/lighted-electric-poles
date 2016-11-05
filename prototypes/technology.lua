data:extend({
  {
      type = "technology",
      name = "lighted-electric-poles",
      icon = "__base__/graphics/technology/electric-energy-distribution.png",
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "lighted-small-electric-pole"
        },
        {
            type = "unlock-recipe",
            recipe = "lighted-medium-electric-pole"
        },
		{
            type = "unlock-recipe",
            recipe = "lighted-big-electric-pole"
        },
		{
            type = "unlock-recipe",
            recipe = "lighted-substation"
        }
      },
	  prerequisites = {"optics", "electric-energy-distribution-2"},
      unit =
      {
        count = 50,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 20
      }
  }
})