Hooks:PostHook(WeaponTweakData, "_init_m95", "warzone_m95_weapontweak_init", function(self, weapon_data)

	self.m95.projectile_type = "wz_prj_50cal"
	
end)


local PRIMARY = 2
local SECONDARY = 1
local UNDERBARREL = 3

Hooks:PostHook(WeaponTweakData, "_init_new_weapons", "wz_init_new_weapons", function(self, weapon_data)
    self:_init_wz_weapons()
end)

function WeaponTweakData:_init_wz_weapons()
    self.new_m14_primary = deep_clone(self.new_m14)
    self.new_m14_primary.animations.reload_name_id = "new_m14"
    self.new_m14_primary.weapon_hold = "new_m14"
    self.new_m14_primary.stats_modifiers = {damage = 2}
    self.new_m14_secondary = deep_clone(self.new_m14_primary)
    self.new_m14_secondary.use_data = {selection_index = SECONDARY}
end