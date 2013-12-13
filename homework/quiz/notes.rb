# post '/results' do

# 			erb :results
# 		end

######This was in extrapolation.rb####

	def pick_west_coast
		@west_coast.count		
	end

	def pick_east_coast
		answer = @east_coast.count
			if answer < 5
				"You're a west coaster"
			end
	end