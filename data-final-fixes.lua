for _, spawner in pairs(data.raw["unit-spawner"]) do
    local created_effects = {}

    if spawner.created_effect ~= nil then
        if spawner.created_effect.type ~= nil then
            created_effects = {spawner.created_effect}
        else
            for _, effect in spawner.created_effect do
                table.insert(created_effects, effect)
            end
        end
    end

    table.insert(created_effects, {
        type = "direct",
        action_delivery = {
            type = "instant",
            source_effects = {
                type = "script",
                effect_id = "initialize_spawner_nest"
            }
        }
    })

    spawner.created_effect = created_effects
end