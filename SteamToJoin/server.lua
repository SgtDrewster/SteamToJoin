local function OnPlayerConnecting(name, setKickReason, deferrals)
    local player = source
    local steamIdentifier
    local identifiers = GetPlayerIdentifiers(player)

    for _, v in pairs(identifiers) do
        if string.find(v, "steam") then
            steamIdentifier = v
            break
        end
    end

    if not steamIdentifier then
        CancelEvent()
        setKickReason("You are not connected to Steam.")
    end
end

AddEventHandler("playerConnecting", OnPlayerConnecting)
