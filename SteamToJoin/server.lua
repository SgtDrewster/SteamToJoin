AddEventHandler('playerConnecting',function(Name,setKickReason,deferrals)	
	for _, v in ipairs(GetPlayerIdentifiers(source)) do
		if string.find(v,"license") then
			setKickReason("Steam has to be open to join this server!") -- Message that gets displayed when Denied Connection
			CancelEvent() -- Rejects User When Attempting to Join without Steam (Do Not Touch) 
			break
		end
	end
end)
