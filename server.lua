function headshot_dayz(attacker, weapon, bodypart, loss)
local PedWeapon = getPedWeapon(source)
	if (PedWeapon ~= 0) then
		if (bodypart == 9) then
			if getActiveHelmet(source) then
				outputChatBox ("Helmet Protec!",attacker, 255, 100, 34,true)
				triggerClientEvent("play_headshot",attacker)
			else
				outputChatBox ("HeadShot!",attacker, 255, 100, 34,true)
				setElementData(source,"blood",-1)
				triggerClientEvent("play_headshot",attacker)
				setTimer(killPed, 100,  1, source, attacker, attackerweapon, bodypart)
			end
		end
	end
end
addEventHandler("onPlayerDamage", getRootElement (), headshot_dayz)