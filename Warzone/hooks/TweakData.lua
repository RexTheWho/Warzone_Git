	--Projectiles

	tweak_data.projectiles.wz_prj_50cal = deep_clone(tweak_data.projectiles.crossbow_arrow)
	tweak_data.projectiles.wz_prj_50cal = {
		damage = 1000,
		launch_speed = 28000,
		adjust_z = 0,
		mass_look_up_modifier = 1,
		push_at_body_index = 0,
		remove_on_impact = true
	}
	
	tweak_data.projectiles.wz_throwable_flare = {
		damage = 0,
		curve_pow = 0.1,
		range = 1500,
		name_id = "bm_wz_throwable_flare",
		duration = 10,
		dodge_chance = 0.5,
		init_timer = 0,
		accuracy_roll_chance = 0.5,
		accuracy_fail_spread = {
			5,
			10
		}
	}