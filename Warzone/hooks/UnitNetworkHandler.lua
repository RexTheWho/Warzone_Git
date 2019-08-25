function UnitNetworkHandler:place_land_mine(pos, rot, upgrade_lvl, bullet_storm_level, rpc)
	local peer = self._verify_sender(rpc)

	if not self._verify_gamestate(self._gamestate_filter.any_ingame) or not peer then
		return
	end

	if not managers.player:verify_equipment(peer:id(), "ammo_bag") then
		return
	end

	local unit = AmmoBagBase.spawn(pos, rot, upgrade_lvl, peer:id(), bullet_storm_level)

	if unit then
		unit:base():set_server_information(peer:id())
	end
end