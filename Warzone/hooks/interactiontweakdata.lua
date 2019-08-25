Hooks:PostHook(InteractionTweakData,"init","raidday2_interactiontweak_init",function(self)

	

	self.wz_carry_drop_weapons = {
		icon = "develop",
		text_id = "hud_int_hold_carry_weapons",
		sound_event = "ammo_bag_drop",
		timer = 1,
		force_update_position = true,
		action_text_id = "hud_action_grabbing_bag",
		blocked_hint = "carry_block"
	}

	self.wz_carry_drop_rations = {
		icon = "develop",
		text_id = "hud_int_hold_carry_rations",
		sound_event = "ammo_bag_drop",
		timer = 1,
		force_update_position = true,
		action_text_id = "hud_action_grabbing_bag",
		blocked_hint = "carry_block"
	}

	self.wz_carry_drop_munitions = {
		icon = "develop",
		text_id = "hud_int_hold_carry_munitions",
		sound_event = "ammo_bag_drop",
		timer = 1,
		force_update_position = true,
		action_text_id = "hud_action_grabbing_bag",
		blocked_hint = "carry_block"
	}

	self.wz_carry_drop_scrap = {
		icon = "develop",
		text_id = "hud_int_hold_carry_scrap",
		sound_event = "ammo_bag_drop",
		timer = 1,
		force_update_position = true,
		action_text_id = "hud_action_grabbing_bag",
		blocked_hint = "carry_block"
	}

	self.wz_carry_drop_satchelbomb = {
		icon = "develop",
		text_id = "hud_int_hold_carry_satchelbomb",
		sound_event = "ammo_bag_drop",
		timer = 1,
		force_update_position = true,
		action_text_id = "hud_action_grabbing_bag",
		blocked_hint = "carry_block"
	}
	
end)