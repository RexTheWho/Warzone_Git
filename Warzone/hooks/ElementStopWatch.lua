Hooks:PostHook(ElementStopwatchOperator,"init","wz_elementstopwatch_init",function(self)

	--Copy of On Executed (Modified)
	function ElementStopwatchOperator:on_executed(instigator)
		if not self._values.enabled then
			return
		end

		local time = self:get_random_table_value_float(self:value("time"))

		for _, id in ipairs(self._values.elements) do
			local element = self:get_mission_element(id)

			if element then
				if self._values.operation == "pause" then
					element:stopwatch_operation_pause()
				elseif self._values.operation == "start" then
					element:stopwatch_operation_start()
				elseif self._values.operation == "add_time" then
					element:stopwatch_operation_add_time(time)
				elseif self._values.operation == "subtract_time" then
					element:stopwatch_operation_subtract_time(time)
				elseif self._values.operation == "reset" then
					element:stopwatch_operation_reset()
				elseif self._values.operation == "set_time" then
					element:stopwatch_operation_set_time(time)
				elseif self._values.operation == "save_time" then
					local time = element:get_time() or 0
					local saved_time = managers.mission:get_saved_job_value(self:value("save_key"))

					print("[stopwatch] saving stopwatch time", self:value("save_key"), time, saved_time, self:_save_value_ok(time, saved_time))

					if self:_save_value_ok(time, saved_time) then
						Global.mission_manager.saved_job_values[self:value("save_key")] = time
					end
				elseif self._values.operation == "load_time" then
					print("[stopwatch] loading stopwatch time", self:value("save_key"), Global.mission_manager.saved_job_values[self:value("save_key")])

					local saved_time = Global.mission_manager.saved_job_values[self:value("save_key")]

					if saved_time ~= nil then
						if type(saved_time) ~= "number" then
							saved_time = tonumber(saved_time)
						end

						if saved_time ~= nil then
							element:stopwatch_operation_set_time(saved_time)
						end
					end
				--Janky hack m8
				elseif self._values.operation == "set_heist_time" then
					print("[stopwatch] loading stopwatch time", self:value("save_key"), Global.mission_manager.saved_job_values[self:value("save_key")])

					local saved_time = Global.mission_manager.saved_job_values[self:value("save_key")]

					if saved_time ~= nil then
						if type(saved_time) ~= "number" then
							saved_time = tonumber(saved_time)
						end

						if saved_time ~= nil then
							element:stopwatch_operation_set_heist_time(saved_time)
						end
					end
				end
			end
		end

		ElementStopwatchOperator.super.on_executed(self, instigator)
	end
	
	--Set Current Stopwatch Timer as Heist Timer
	function ElementStopwatch:stopwatch_operation_set_heist_time(time)
		managers.game_play_central:modify_heist_timer(time)
	end
	
	
end)