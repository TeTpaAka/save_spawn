local spawn_region = {
	{x = -100, y = -100, z = -100},
	{x = 100, y = 100, z = 100}
}

minetest.register_on_punchplayer(function(player, hitter, time_from_last_punch, tool_capabilities, dir, damage)
	local pos = player:getpos()
	if (pos.x > spawn_region[1].x and pos.x < spawn_region[2].x and
			pos.y > spawn_region[1].y and pos.y < spawn_region[2].y and
			pos.z > spawn_region[1].z and pos.z < spawn_region[2].z) then
		if (hitter:is_player()) then
			minetest.chat_send_player(hitter:get_player_name(), "PVP is disabled in the spawn area!")
		end
		return true
	end
end)
