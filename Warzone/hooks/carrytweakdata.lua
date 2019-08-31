Hooks:PostHook(CarryTweakData,"init","warzone_carrytweak_init",function(self)

	self.types.wz_weight_0 = {
		move_speed_modifier = 1,
		jump_modifier = 1,
		can_run = true,
		throw_distance_multiplier = 1
	}
	
	self.types.wz_weight_1 = {
		move_speed_modifier = 0.75,
		jump_modifier = 0.75,
		can_run = true,
		throw_distance_multiplier = 0.6
	}
	self.types.wz_weight_1_throwboosted = deep_clone(self.types.wz_weight_1)
	self.types.wz_weight_1_throwboosted.throw_distance_multiplier = 1
	
	self.types.wz_weight_2 = {
		move_speed_modifier = 0.65,
		jump_modifier = 0.65,
		can_run = true,
		throw_distance_multiplier = 0.5
	}
	self.types.wz_weight_2_throwboosted = deep_clone(self.types.wz_weight_2)
	self.types.wz_weight_2_throwboosted.throw_distance_multiplier = 1
	
	self.types.wz_weight_3 = {
		move_speed_modifier = 0.5,
		jump_modifier = 0.5,
		can_run = true,
		throw_distance_multiplier = 0.4
	}
	self.types.wz_weight_4 = {
		move_speed_modifier = 0.4,
		jump_modifier = 0.4,
		can_run = true,
		throw_distance_multiplier = 0.3
	}
	self.types.wz_weight_5 = {
		move_speed_modifier = 0.3,
		jump_modifier = 0.3,
		can_run = true,
		throw_distance_multiplier = 0.2
	}
	
	--RATIONS
	
	self.wz_resource_rations_light = {
		type = "wz_weight_1",
		is_unique_loot = true,
		name_id = "hud_carry_wz_resource_rations",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_supplies/gen_pku_wz_supplies_rations_medium",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		wz_supply_value = 1
	}
	self.wz_resource_rations_medium = {
		type = "wz_weight_2",
		is_unique_loot = true,
		name_id = "hud_carry_wz_resource_rations",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_supplies/gen_pku_wz_supplies_rations_medium",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		wz_supply_value = 2
	}
	self.wz_resource_rations_slightly_heavy = {
		type = "wz_weight_3",
		is_unique_loot = true,
		name_id = "hud_carry_wz_resource_rations",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_supplies/gen_pku_wz_supplies_rations_medium",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		wz_supply_value = 3
	}
	
	--MUNITIONS
	self.wz_resource_munitions_light = {
		type = "wz_weight_1",
		is_unique_loot = true,
		name_id = "hud_carry_wz_resource_munitions",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_supplies/gen_pku_wz_supplies_munitions_medium",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		default_value = 1
	}
	self.wz_resource_munitions_medium = {
		type = "wz_weight_2",
		is_unique_loot = true,
		name_id = "hud_carry_wz_resource_munitions",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_supplies/gen_pku_wz_supplies_munitions_medium",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		default_value = 1
	}
	self.wz_resource_munitions_slightly_heavy = {
		type = "wz_weight_3",
		is_unique_loot = true,
		name_id = "hud_carry_wz_resource_munitions",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_supplies/gen_pku_wz_supplies_munitions_medium",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		default_value = 1
	}
	
	--SCRAP
	self.wz_resource_scrap_light = {
		type = "wz_weight_1",
		is_unique_loot = true,
		name_id = "hud_carry_wz_resource_scrap",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_supplies/gen_pku_wz_supplies_materials_medium",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		default_value = 1
	}
	self.wz_resource_scrap_medium = {
		type = "wz_weight_2",
		is_unique_loot = true,
		name_id = "hud_carry_wz_resource_scrap",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_supplies/gen_pku_wz_supplies_materials_medium",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		default_value = 1
	}
	self.wz_resource_scrap_slightly_heavy = {
		type = "wz_weight_3",
		is_unique_loot = true,
		name_id = "hud_carry_wz_resource_scrap",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_supplies/gen_pku_wz_supplies_materials_medium",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		default_value = 1
	}
	
	--WEAPON CASE
	self.wz_weapons_modern_large = {
		type = "wz_weight_3",
		name_id = "hud_carry_wz_weapons_modern_large",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_weapons/gen_pku_wz_weapons_large_modern",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		default_value = 1,
		is_unique_loot = true,
		skip_exit_secure = true
	}
	self.wz_weapons_modern_medium = {
		type = "wz_weight_2",
		name_id = "hud_carry_wz_weapons_modern_medium",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_weapons/gen_pku_wz_weapons_medium_modern",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		default_value = 1,
		is_unique_loot = true,
		skip_exit_secure = true
	}
	self.wz_weapons_modern_small = {
		type = "wz_weight_1",
		name_id = "hud_carry_wz_weapons_modern_small",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_weapons/gen_pku_wz_weapons_small_modern",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		default_value = 1,
		is_unique_loot = true,
		skip_exit_secure = true
	}
	
	--WEAPON CASE
	self.wz_satchelbomb = {
		type = "wz_weight_1_throwboosted",
		name_id = "hud_carry_wz_satchelbomb",
		unit = "units/pd2_mod_warzone/pickups/gen_pku_wz_satchelbomb/gen_pku_wz_satchelbomb",
		visual_unit_name = "units/pd2_mod_warzone/pickups/acc_units/acc_pku_wz_supplies_materials",
		default_value = 1,
		is_unique_loot = true,
		skip_exit_secure = true
	}

end)