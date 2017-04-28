require("config")

local lighted_poles = {
    ["lighted-small-electric-pole"] = true,
    ["lighted-big-electric-pole"] = true,
    ["lighted-big-electric-pole-2"] = true,
    ["lighted-big-electric-pole-3"] = true,
    ["lighted-big-electric-pole-4"] = true,
    ["lighted-medium-electric-pole"] = true,
    ["lighted-medium-electric-pole-2"] = true,
    ["lighted-medium-electric-pole-3"] = true,
    ["lighted-medium-electric-pole-4"] = true,
    ["lighted-substation"] = true,
    ["lighted-substation-2"] = true,
    ["lighted-substation-3"] = true,
    ["lighted-substation-4"] = true
}


lamp_name = "hidden-small-lamp"
if lightedpoles_show_lamp then
    lamp_name = "attached-small-lamp"
end

function BuiltEntity(event)
    local e = event.created_entity
    if (lighted_poles[e.name]) then
        local l = e.surface.create_entity { name = lamp_name, position = e.position, force = e.force }
        l.destructible = false
        l.minable = false
    end
end


function MinedEntity(event)
    local e = event.entity

    -- Check for both lamp entities in case the flag was changed inbetween saves and
    -- poles were placed with the previous setting
    if (lighted_poles[e.name]) then
        local found = e.surface.find_entities_filtered {
            name = "hidden-small-lamp",
            position = e.position
        }

        if not found[1] then
            found = e.surface.find_entities_filtered {
                name = "attached-small-lamp",
                position = e.position
            }
        end

        if found[1] then
            found[1].destroy()
        end
    end
end

script.on_event(defines.events.on_built_entity, BuiltEntity)
script.on_event(defines.events.on_robot_built_entity, BuiltEntity)
script.on_event(defines.events.on_preplayer_mined_item, MinedEntity)
script.on_event(defines.events.on_entity_died, MinedEntity)
script.on_event(defines.events.on_robot_pre_mined, MinedEntity)