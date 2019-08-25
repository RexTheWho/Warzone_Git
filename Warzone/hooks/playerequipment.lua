

--Friendly Little Landmine
function PlayerEquipment:use_land_mine()
	local ray = self:valid_shape_placement("ammo_bag")

	if ray then
		local pos = ray.position
		local rot = self:_m_deploy_rot()
		rot = Rotation(rot:yaw(), 0, 0)

		PlayerStandard.say_line(self, "s02x_plu")
		managers.statistics:use_ammo_bag()

		local ammo_upgrade_lvl = managers.player:upgrade_level("ammo_bag", "ammo_increase")
		local bullet_storm_level = managers.player:upgrade_level("player", "no_ammo_cost")

		if Network:is_client() then
			managers.network:session():send_to_host("place_land_mine", pos, rot, ammo_upgrade_lvl, bullet_storm_level)
		else
			slot6 = LandMineBase.spawn(pos, rot, ammo_upgrade_lvl, managers.network:session():local_peer():id(), bullet_storm_level)
		end

		return true
	end

	return false
end