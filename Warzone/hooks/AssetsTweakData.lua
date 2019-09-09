Hooks:PostHook(AssetsTweakData,"init","warzone_assetstweakdata_init",function(self)

	self.gage_assignment.exclude_stages = {"wz_demo"}
	self.risk_pd.exclude_stages = {"wz_demo"}
	self.risk_swat.exclude_stages = {"wz_demo"}
	self.risk_fbi.exclude_stages = {"wz_demo"}
	self.risk_death_squad.exclude_stages = {"wz_demo"}
	self.risk_easy_wish.exclude_stages = {"wz_demo"}
	self.risk_death_wish.exclude_stages = {"wz_demo"}
	self.risk_sm_wish.exclude_stages = {"wz_demo"}
	
end)