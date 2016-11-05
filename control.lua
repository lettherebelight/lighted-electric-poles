local lighted_poles = {
  ["lighted-small-electric-pole"] = true,
  ["lighted-big-electric-pole"] = true,
  ["lighted-medium-electric-pole"] = true,
  ["lighted-substation"] = true,
}

function BuiltEntity(event)
	local e = event.created_entity
	
	if (lighted_poles[e.name]) then	
		local l = e.surface.create_entity{name = "hidden-small-lamp", position = e.position, force = e.force}
		l.destructible = false
	end
end


function MinedEntity(event)
	local e = event.entity
	
	if (lighted_poles[e.name]) then
		local found = e.surface.find_entities_filtered {
			name = 'hidden-small-lamp',
			position = e.position,
		}
		if found[1] then 
			found[1].destroy() 
		end		
	end
end

script.on_event(defines.events.on_built_entity, BuiltEntity)
script.on_event(defines.events.on_robot_built_entity, BuiltEntity)
script.on_event(defines.events.on_preplayer_mined_item , MinedEntity)
script.on_event(defines.events.on_entity_died , MinedEntity)
script.on_event(defines.events.on_robot_pre_mined  , MinedEntity)