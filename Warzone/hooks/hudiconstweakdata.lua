Hooks:PostHook(HudIconsTweakData,"init","warzone_hudiconstweak_init",function(self)

	--EQUIPMENT
	self.equipment_dynamite = {
		texture = "ui/atlas/raid_atlas_hud",
		texture_rect = {
			644,
			1280,
			32,
			32
		}
	}
	
	--WAYPOINTS
	self.wz_wp_player_camp = {
		texture = "guis/warzone/textures/hud/wz_waypoints",
		texture_rect = {
			0,
			0,
			32,
			32
		}
	}
	self.wz_wp_player_goto = {
		texture = "guis/warzone/textures/hud/wz_waypoints",
		texture_rect = {
			32,
			0,
			32,
			32
		}
	}
	
end)