Hooks:PostHook(PrePlanningTweakData,"init","warzone_preplantweakdata_init",function(self)

	--New GUI
	self.gui.type_icons_path = "guis/warzone/textures/preplanning/pp_wz_icons"
	self.gui.category_icons_path = "guis/warzone/textures/preplanning/pp_wz_frames"
	self.gui.MAX_DRAW_POINTS = 0
	
	--Plans
	self.plans.arrival_plan = {
		category = "arrival_plan"
	}
	self.plans.arrival_plan_locked = {
		category = "arrival_plan_locked"
	}
	
	--Cats (Meow)
	self.categories.arrival_plan = {
		name_id = "menu_pp_cat_arrival_plan_name",
		desc_id = "menu_pp_cat_arrival_plan_desc",
		plan = "arrival_plan",
		icon = 11,
		total = 1,
		prio = 1
	}
	
	--Arrive Locations
	self.types.wz_type_arrival_location = {
		name_id = "menu_pp_arrival_location_name",
		desc_id = "menu_pp_arrival_location_desc",
		plan = "arrival_plan",
		category = "arrival_plan",
		icon = 21,
		total = 1,
		cost = 0,
		budget_cost = 0,
		post_event = "",
		prio = 999
	}
	self.types.wz_type_arrival_location_locked = {
		name_id = "menu_pp_arrival_location_locked_name",
		desc_id = "menu_pp_arrival_location_locked_desc",
		plan = "arrival_plan",
		category = "arrival_plan",
		icon = 31,
		total = 1,
		cost = 0,
		budget_cost = 999,
		post_event = "",
		prio = 0
	}
	
	--Map
	self.locations.wz_demo = {
		{
			name_id = "menu_pp_warzone_loc_a",
			texture = "guis/warzone/textures/preplanning/pp_warzone_map",
			x2 = 100000,
			x1 = -100000,
			y2 = 100000,
			y1 = -100000,
			rotation = 0,
			map_size = 1,
			map_x = 0,
			map_y = 0,
			map_width = 1,
			map_height = 1,
			custom_points = {
				{
					text_id = "menu_pp_info_boss",
					post_event = "",
					to_upper = true,
					icon = 11,
					y = 64,
					x = 64,
					rotation = 0
				}
			}
		},
		mission_briefing_texture = "guis/warzone/textures/preplanning/pp_warzone_map_icon",
		total_budget = 0,
		default_plans = {
			arrival_plan = "wz_type_arrival_location"
		},
		start_location = {
			group = "a",
			zoom = 0.5,
			x = 50000,
			y = 50000
		}
	}
	
end)