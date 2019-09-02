dofile(ModPath .. "classes/WDUManager.lua")

Hooks:PostHook(GameSetup, "init_managers", "wz_init_wdumanager", function(self, managers)
	managers.wdu = WDUManager:new()
	managers.wdu:preload_weapons()
end)