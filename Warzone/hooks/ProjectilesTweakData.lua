Hooks:PostHook(BlackMarketTweakData, "_init_projectiles", "wz_projectilestweak_init", function(self, tweak_data)

	--Bullet
	self.projectiles.wz_prj_50cal = deep_clone(self.projectiles.crossbow_arrow)
	self.projectiles.wz_prj_50cal = {
		unit = "units/pd2_mod_warzone/weapons/wz_prj_50cal/wz_prj_50cal",
		local_unit = "units/pd2_mod_warzone/weapons/wz_prj_50cal/wz_prj_50cal_local",
		weapon_id = "m95",
		no_cheat_count = true,
		client_authoritative = true,
		is_explosive = true
	}

	--Test Flare Throwable
	self.projectiles.wz_throwable_flare = {
		name_id = "bm_grenade_smoke_screen_grenade",
		desc_id = "bm_grenade_smoke_screen_grenade_desc",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_smoke_screen_grenade/wpn_third_smoke_screen_grenade",
		unit_dummy = "units/pd2_dlc_max/weapons/wpn_fps_smoke_screen_grenade/wpn_fps_smoke_screen_grenade_husk",
		sprint_unit = "units/pd2_dlc_max/weapons/wpn_fps_smoke_screen_grenade/wpn_third_smoke_screen_grenade_sprint",
		icon = "smoke_screen_grenade",
		texture_bundle_folder = "max",
		base_cooldown = 15,
		max_amount = 1,
		is_a_grenade = true,
		throwable = true,
		animation = "throw_grenade_com",
		anim_global_param = "projectile_frag_com",
		no_shouting = true
	}
end)