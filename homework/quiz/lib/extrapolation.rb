

class Extrapolation

	attr_accessor :get_results,:west_coast

	def initialize(params)
		@choices = params
		@east_coast = []
		@west_coast = []
	end

	def get_results
		if @choices["lifestyle_prefs"]["0"] == "true"
			@west_coast << 'west_coast'	
		else
			@east_coast << 'east_coast'
		end 
		if @choices["lifestyle_prefs"]["1"] == "true"
			@east_coast << 'east_coast1'
		else
			@west_coast << 'west_coast1'	
		end 
		if @choices["lifestyle_prefs"]["2"] == "true"
			@east_coast << 'east_coast2'
		else
			@west_coast << 'west_coast2'	
		end 
		if @choices["lifestyle_prefs"]["3"] == "true"
			@west_coast << 'west_coast3'	
		else
			@east_coast << 'east_coast3'
		end 
		if @choices["lifestyle_prefs"]["4"] == "true"
			@east_coast << 'east_coast4'	
		else
			@west_coast << 'west_coast4'
		end 
		if @choices["temperament"]["0"] == "true"
			@east_coast << 'east_coast5'
		else
			@west_coast << 'west_coast5'
		end
		if @choices["temperament"]["1"] == "true"
			@east_coast << 'east_coast6'
		else
			@west_coast << 'west_coast6'
		end
		if @choices["temperament"]["2"] == "true"
			@east_coast << 'east_coast7'
		else
			@west_coast << 'west_coast7'
		end
		if @choices["temperament"]["3"] == "true"
			@east_coast << 'east_coast8'
		else
			@west_coast << 'west_coast8'
		end
		if @choices["temperament"]["4"] == "true"
			@east_coast << 'east_coast9'
		else
			@west_coast << 'west_coast9'
		end
	end

	def west_coast
		@west_coast.count		
	end

end

