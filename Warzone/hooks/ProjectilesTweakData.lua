Hooks:PostHook(BlackMarketTweakData, "_init_projectiles", "wz_projectilestweak_init", function(self, tweak_data)

	self.projectiles.wz_prj_50cal = {
		name_id = "bm_wz_prj_50cal",
		unit = "units/pd2_mod_warzone/weapons/wpn_prj_50cal/wpn_prj_50cal",
		local_unit = "units/pd2_mod_warzone/weapons/wpn_prj_50cal/wpn_prj_50cal_local",
		weapon_id = "m95",
		no_cheat_count = true,
		impact_detonation = true,
		add_trail_effect = true,
		client_authoritative = true
	}
	
end)