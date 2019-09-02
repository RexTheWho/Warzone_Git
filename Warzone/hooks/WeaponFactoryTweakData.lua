Hooks:PostHook(WeaponFactoryTweakData, "init", "warzone_weaponfactorytweak_init", function(self)
	--Inits
    self:_init_wz_weapon_factory()

	--To Move Later
	self.wpn_fps_snp_m95.unit = "units/pd2_mod_warzone/weapons/wpn_fps_snp_m95/wpn_fps_snp_m95"
	self.wpn_fps_snp_m95.third_unit = "units/pd2_mod_warzone/weapons/wpn_fps_snp_m95/wpn_fps_snp_m95_npc"
	
end)

function WeaponFactoryTweakData:_init_wz_weapon_factory()
	--M14
    self.wpn_fps_ass_m14_primary = deep_clone(self.wpn_fps_ass_m14)
    self.wpn_fps_ass_m14_primary.unit = "units/pd2_mod_warzone/weapons/wz_wpn_m14/wpn_fps_ass_m14_primary"
    self.wpn_fps_ass_m14_primary_npc = deep_clone(self.wpn_fps_ass_m14_primary)
	self.wpn_fps_ass_m14_primary_npc.unit = "units/payday2/weapons/wpn_fps_ass_m14/wpn_fps_ass_m14_npc"
	
    self.wpn_fps_ass_m14_secondary = deep_clone(self.wpn_fps_ass_m14)
    self.wpn_fps_ass_m14_secondary.unit = "units/pd2_mod_warzone/weapons/wz_wpn_m14/wpn_fps_ass_m14_secondary"
    self.wpn_fps_ass_m14_secondary_npc = deep_clone(self.wpn_fps_ass_m14_secondary)
	self.wpn_fps_ass_m14_secondary_npc.unit = "units/payday2/weapons/wpn_fps_ass_m14/wpn_fps_ass_m14_npc"
end