Hooks:PostHook(BlackMarketTweakData, "_init_projectiles", "wz_projectilestweak_init", function(self, tweak_data)

	self.projectiles.wz_prj_50cal = deep_clone(self.projectiles.crossbow_arrow)
	self.projectiles.wz_prj_50cal = {
		unit = "units/pd2_mod_warzone/weapons/wz_prj_50cal/wz_prj_50cal",
		local_unit = "units/pd2_mod_warzone/weapons/wz_prj_50cal/wz_prj_50cal_local",
		weapon_id = "m95",
		no_cheat_count = true,
		client_authoritative = true,
		is_explosive = true
	}

end)