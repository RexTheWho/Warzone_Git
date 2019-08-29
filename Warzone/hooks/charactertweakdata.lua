Hooks:PostHook(CharacterTweakData,"init","warzone_charactertweak_init",function(self)

	self:_init_region_terror(presets)

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