

#####Gets weirder.
# # require 'debugger'

# require 'Time'


# class Airport


# 	def initialize
# 			@difference = [] 
# 			@cache = []
# 	end

# 	def flight_info
# 		puts "In military hour format, what time was the flight supposed to arrive? (hh:mm)"
# 			hour = gets.chomp
# 			# debugger
# 			time=Time.parse(hour)
		
# 		puts "In military hour format, when did the plane ACTUALLY arrive? (hh:mm)"
# 			arrival_hour = gets.chomp
# 			# debugger
# 			arrival=Time.parse(arrival_hour)
				
# 		total = time - arrival
# 		@cache << total	
# 	end


# 	def accumulator
# 		puts "Were there other flights you were expecting with this airline previously? (y/n)"
# 		answer = gets.chomp.downcase
			
# 		while answer == "y"

# 			puts "OK, lets do this again. In military hour format, what hour was the other flight supposed to arrive? (hh:mm)"
# 			hour = gets.chomp
# 			time = Time.parse(hour)
# 			# debugger	

# 			puts "In military hour format, when did that plane ACTUALLY arrive? (hh:mm)"
# 			arrival_hour = gets.chomp
# 			# debugger
# 			arrival = Time.parse(arrival_hour)
# 			total = time - arrival
# 			@cache << total		

# 			puts "Any more flights? (y/n)"
# 			answer = gets.chomp.downcase		
# 		end	

# 	end

# 	def converter
# 		# debugger
# 		@cache.each do |number|
# 			if number == 0
# 				@cache << 0
# 			elsif number >= 1 && number <= 60 
# 				minutes = number/60
# 				@cache << minutes
# 			else number >= 61 
# 				minutes = number/60
# 				hours = minutes/60
# 				@cache << hours
# 			end
# 		end

# 	end

# 	def average
# 		total_flights = @cache.count
# 		sum_of_times = @cache.reduce(:+) 
# 		magic_number = sum_of_times/total_flights
# 		"Based on the information you gave, this airline is off schedule by #{magic_number} hours.  Plan your trip accordingly."      
# 	end

# end #<-- end of class!

# plane = Airport.new
# p plane.flight_info
# p plane.accumulator
# p plane.converter
# p plane.average




#####Gets weird.

# require 'Time'


# class Airport


# 	def initialize
# 			@difference = [] 
# 			@cache = []
# 	end

# 	def flight_info
# 		puts "In military hour format, what time was the flight supposed to arrive? (hh:mm)"
# 			hour = gets.chomp
# 			# debugger
# 			time=Time.parse(hour)
		
# 		puts "In military hour format, when did the plane ACTUALLY arrive? (hh:mm)"
# 			arrival_hour = gets.chomp
# 			# debugger
# 			arrival=Time.parse(arrival_hour)
				
# 		total = time - arrival
# 		@cache << total	
		
# 		puts "Were there other flights you were expecting with this airline previously? (y/n)"
# 			answer = gets.chomp.downcase
			
# 		while answer == "y"
# 			puts "OK, lets do this again. In military hour format, what hour was the other flight supposed to arrive? (hh:mm)"
# 				hour = gets.chomp
# 				time= Time.parse(hour)

# 			# debugger	
# 			puts "In military hour format, when did that plane ACTUALLY arrive? (hh:mm)"
# 				arrival_hour = gets.chomp
# 				arrival =Time.parse(arrival_hour)
			
# 			total = time - arrival
# 			@cache << total

# 			puts "Were there any other flights? (y/n)"
# 			answer = gets.chomp.downcase
# 		end
		
# 	end

# 	def converter
# 		# debugger
# 		@difference.each do |number|
# 			if number == 0
# 				@cache << 0
# 			elsif number >= 1 && number <= 60 
# 				minutes = @difference/60
# 				@cache << minutes
# 			else number >= 61 
# 				minutes = number/60
# 				hours = minutes/60
# 				@cache << hours
# 			end
# 		end
# 		@difference

# 	end

# 	def average
# 		total_flights = @cache.count
# 		# total_flights
# 		sum_of_times = (@cache.inject(:+))/2
# 		# sum_of_times
# 		magic_number = (sum_of_times/total_flights)/60
# 		# magic_number
# 		# "Based on the information you gave, this airline is off schedule by #{magic_number} hours.  Plan your trip accordingly."      
# 	end

# end #<-- end of class!

# plane = Airport.new
# p plane.flight_info
# p plane.converter
# p plane.average

####This works but it could be refactored way more.

# # require 'debugger'

# require 'Time'


# class Airport


# 	def initialize
# 			@t = nil
# 			@a = nil
# 			@difference = nil 
# 			@cache = []
# 			@time_expected = nil
# 			@got_in = nil
# 			@other_flight = nil 
# 	end

# 	def plane
# 		puts "In military hour format, what time was the flight supposed to arrive? (hh:mm)"
# 			hour = gets.chomp
# 			# debugger
# 			@t=Time.parse(hour)
# 	end
	
# 	def arrival
# 		puts "In military hour format, when did the plane ACTUALLY arrive? (hh:mm)"
# 			arrival_hour = gets.chomp
# 			# debugger
# 			@a=Time.parse(arrival_hour)
# 	end

# 	def time_difference
# 		# debugger
# 		eta = @t
# 		arrival_time = @a
# 		@difference = arrival_time - eta
# 	end

# 	def converter
# 		if @difference == 0
# 			@cache << 0
# 			"the flight was right on time!"
# 		elsif @difference >= 1 && @difference <= 60 
# 			minutes = @difference/60
# 			@cache << minutes
# 			"The flight was #{minutes} minutes off schedule."
# 		else @difference >= 61 
# 			minutes = @difference/60
# 			hours = minutes/60
# 			@cache << hours
# 			"The flight was #{hours} hours off schedule."
# 		end

# 	end

# 	def accumulator
# 		puts "Were there other flights you were expecting with this airline previously? (y/n)"
# 		answer = gets.chomp.downcase
# 			while answer == "y"
# 				puts "OK, lets do this again. In military hour format, what hour was the other flight supposed to arrive? (hh:mm)"
# 				hour = gets.chomp
# 				@time_expected = Time.parse(hour)
# 				# debugger	
# 					puts "In military hour format, when did that plane ACTUALLY arrive? (hh:mm)"
# 					arrival_hour = gets.chomp
# 					# debugger
# 					@got_in = Time.parse(arrival_hour)
# 						eta = @time_expected
# 						arrival_time = @got_in
# 						@other_flight = arrival_time - eta	
# 							puts "Any more flights? (y/n)"
# 							answer = gets.chomp.downcase		
# 			end	
# 	end

# 	def more
# 		if @other_flight == 0
# 			@cache << 0
# 			"Awesome, that flight was on time."
# 		elsif @other_flight >= 1 && @other_flight <= 60 
# 			minutes = @other_flight/60
# 			@cache << minutes
# 			"That flight was #{minutes} minutes off schedule."
# 		else @other_flight >= 61 
# 			minutes = @other_flight/60
# 			hours = minutes/60
# 			@cache << hours
# 			"That flight was #{hours} hours off schedule."
# 		end
	
# 	end


# 	def average
# 		total_flights = @cache.count
# 		sum_of_times = @cache.reduce(:+) 
# 		magic_number = sum_of_times/total_flights
# 		"Based on the information you gave, this airline is off schedule by #{magic_number} hours.  Plan your trip accordingly."      
# 	end


	

# end #<-- end of class!

# plane = Airport.new
# p plane.plane
# p plane.arrival
# p plane.time_difference
# p plane.converter
# p plane.accumulator
# p plane.more
# p plane.average


######Military Accumulator loop O.G.
	# def accumulator
	# 	puts "Were there other flights you were expecting with this airline previously? (y/n)"
	# 	answer = gets.chomp.downcase
	# 		if answer == "n"
	# 			puts "OK, lets do this again. In military hour format, what hour was the other flight supposed to arrive? (hh:mm)"
	# 			hour = gets.chomp
	# 			@time_expected = Time.parse(hour)
	# 			# debugger	
	# 				puts "In military hour format, when did that plane ACTUALLY arrive?"
	# 				arrival_hour = gets.chomp
	# 				# debugger
	# 				@got_in = Time.parse(arrival_hour)
	# 					eta = @time_expected
	# 					arrival_time = @got_in
	# 					@other_flight = arrival_time - eta			
	# 		else answer == "y"
	# 			"Nevermind then."
	# 		end		
	# end


######Original get_even_more loop

# puts "OK, we can keep going. In military hour format, what hour was the other flight supposed to arrive?"
# 						hour = gets.chomp
# 						puts "What minute? If on the hour, enter in '00'"
# 						minute = gets.chomp
# 						@started = hour + ":" + minute
# 						@time_expectation=Time.parse(@started)
# 						# debugger	
# 							puts "In military hour format, when did that plane ACTUALLY arrive?"
# 							arrival_hour = gets.chomp
# 							puts "What minute? If on the hour, enter in '00'"
# 							arrival_minute = gets.chomp
# 							@arrived = arrival_hour + ":" + arrival_minute
# 							# debugger
# 							@arrived =Time.parse(@arrived)
# 								eta = @time_expectation
# 								arrival_time = @arrived
# 								@more_flights = arrival_time - eta	



####Persnickety final number if statement
# if @more_flights == 0
# 			@cache << 0
# 		elsif @more_flights >= 1 && @more_flights <= 60 
# 			minutes = @more_flights/60
# 			@cache << minutes
# 		else @more_flights >= 61 
# 			minutes = @more_flights/60
# 			hours = minutes/60
# 			@cache << hours
# 		end


#####Prints out the hours and minutes only!
# t = Time.now
# p t.strftime("%I:%M%p")

 # t = Time.parse('22:00')
 # p t.strftime("%I:%M%p")

###works when creating a new airport.

# require 'Time'

# class Airport

# 	attr_accessor :start

# 	def initialize(args)
# 		@start = Time.parse(args)
# 	end


# end

# plane = Airport.new('22:00')
# p plane






#First attempt.  Not crazy about it.
# require 'time'

# class Airport

# attr_reader :time

# def initialize
# 	@time = []
# end

# def time_avg(a1, a2, a3, a4, a5)
# 	@time << a1
# 	@time << a2
# 	@time << a3
# 	@time << a4
# 	@time << a5
# end
# 	a = @time
#  	a.each do |time|
#  		time[1]


# end

# a1 = Time.parse("23:51")
# a2 = Time.parse("23:56")
# a3 = Time.parse("00:01")
# a4 = Time.parse("00:06")
# a5 = Time.parse("00:11")

# flight = Airport.new
# p flight.time_avg(a1, a2, a3, a4, a5)