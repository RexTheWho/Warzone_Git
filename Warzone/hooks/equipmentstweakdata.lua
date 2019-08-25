Hooks:PostHook(EquipmentsTweakData,"init","warzone_equipmenttweak_init",function(self)


	--Deployable Items
	self.ammo_bag = {
		deploy_time = 1.5,
		use_function_name = "use_land_mine",
		dummy_unit = "units/pd2_mod_warzone/equipment/gen_equipment_landmine/gen_equipment_landmine_dummy",
		text_id = "name_land_mine",
		icon = "equipment_land_mine",
		description_id = "des_land_mine",
		visual_object = "g_ammobag",
		quantity = {
			4
		}
	}

	--Usable Items
	self.specials.dynamite_bag = {
		quantity = 1,
		action_message = "dynamite_bag_obtained",
		transfer_quantity = 8,
		text_id = "hud_equipment_pickup_dynamite_bag",
		sync_possession = true,
		icon = "equipment_dynamite_bag"
	}
	
	
end)