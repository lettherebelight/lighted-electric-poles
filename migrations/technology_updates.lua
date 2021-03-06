-- From https://forums.factorio.com/viewtopic.php?f=14&t=7161&start=10#p67540
for i, player in ipairs(game.players) do
  player.force.resetrecipes()
  player.force.resettechnologies()
end

for index, force in pairs(game.forces) do
  -- create tech/recipe table once
  local techs = force.technologies
  local recipes = force.recipes
  if techs["optics"].researched then
    recipes["lighted-small-electric-pole"].enabled = true
  end	
  
  if techs["electric-energy-distribution-1"].researched then
		recipes["lighted-medium-electric-pole"].enabled = true
		recipes["lighted-big-electric-pole"].enabled = true
  end
	
  if techs["electric-energy-distribution-2"].researched then
		recipes["lighted-substation"].enabled = true
  end
end