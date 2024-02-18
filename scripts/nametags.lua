function update_nametags()
    for unit_number, info_table in pairs(global.unit_info) do
        if info_table.entity ~= nil then
            validate_unit(info_table.entity)

            if info_table.show_name then
                info_table.entity.surface.create_entity({name = "biter-name", position = info_table.entity.position, force = "player", text = info_table.name or "Bob"})
            end
        else
            global.unit_info[unit_number] = nil
        end
    end

    for unit_number, info_table in pairs(global.nest_info) do
        if info_table.entity ~= nil then
            validate_spawner(info_table.entity)

            info_table.entity.surface.create_entity({name = "biter-name", position = info_table.entity.position, force = "player", text = "[color=green]" .. (info_table.name or "Home") .. "[/color]"})
        else
            global.nest_info[unit_number] = nil
        end
    end
end