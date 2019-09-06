Hooks:PostHook(CharacterTweakData,"init","warzone_charactertweak_init",function(self)

	self:_init_region_terror(presets)

	self:_init_terror_swat(presets)
end)


function CharacterTweakData:_init_region_terror()
	self._default_chatter = "dsp_radio_russian"
	self._unit_prefixes = {
		cop = "r",
		swat = "r",
		heavy_swat = "r",
		taser = "rtsr",
		cloaker = "rclk",
		bulldozer = "rbdz",
		medic = "rmdc"
	}
end

function CharacterTweakData:_init_terror_swat(presets)
	self.terror_swat = deep_clone(self.swat)
	self.terror_swat.calls_in = false
	self.terror_swat.steal_loot = nil
	self.terror_swat.shooting_death = false
	self.terror_swat.no_arrest = true
	self.terror_swat.rescue_hostages = false
	table.insert(self._enemy_list, "terror_swat")
end