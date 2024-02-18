function initialize_nest(event)
    if event.source_entity ~= nil then
        global.nest_info[event.source_entity.unit_number] = {
            entity = event.source_entity,
            name = global.nest_names[math.random(1, #global.nest_names)]
        }
    end
end