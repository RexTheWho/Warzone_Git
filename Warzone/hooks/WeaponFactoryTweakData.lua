Hooks:PostHook(WeaponFactoryTweakData, "init", "warzone_weaponfactorytweak_init", function(self, weapon_data)

	self.parts.wpn_fps_wz_prj_50cal = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		a_obj = "a_body",
		type = "ammo",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		internal_part = true,
		sub_type = "ammo_piercing",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_upg_a_piercing",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		custom_stats = {
			launcher_grenade = "wz_prj_50cal",
		}
	}
	
	
	
	self.wpn_fps_snp_m95.default_blueprint = {
		"wpn_fps_snp_m95_barrel_standard",
		"wpn_fps_snp_m95_bipod",
		"wpn_fps_snp_m95_lower_reciever",
		"wpn_fps_snp_m95_upper_reciever",
		"wpn_fps_snp_m95_magazine",
		"wpn_fps_upg_o_shortdot",
		"wpn_fps_upg_m4_g_standard_vanilla",
		"wpn_fps_wz_prj_50cal"
	}
end)