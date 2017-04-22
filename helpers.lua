

function copy_prototype(type, name, new_name, new_icon)
    if not data.raw[type][name] then error("The type [" .. type .. "] [" .. name .. "] does not exist") end
    local new_prototype = util.table.deepcopy(data.raw[type][name])
    new_prototype.name = new_name

    if new_prototype.minable and new_prototype.minable.result then
        new_prototype.minable.result = new_name
    end

    if new_prototype.result then
        new_prototype.result = new_name
    end

    if(new_icon) then
        new_prototype.icon = new_icon
    end

    return new_prototype
end
