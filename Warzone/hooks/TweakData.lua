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
	
	
	
	
	
	
	
	

	tweak_data.overlay_effects.wz_loc_enemy_radio_camp = {
		sustain = 30,
		blend_mode = "normal",
		fade_in = 3,
		text_blend_mode = "add",
		fade_out = 0,
		font = "fonts/font_large_mf",
		text = [[LOCATION // Radio Camp]],
		font_size = 44,
		text_to_upper = false,
		play_paused = true,
		color = Color(1, 0, 0, 0),
		timer = TimerManager:main(),
		text_color = Color(255, 255, 255, 0) / 255
	}