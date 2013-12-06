# require 'debugger'

require 'Time'


class Airport

	attr_reader :cache

	def initialize
			@cache = []
	end

	def flight_info
		# cache = []
		puts "In military hour format, what time was the flight supposed to arrive? (hh:mm)"
			hour = gets.chomp
			eta = Time.parse(hour)
		
		puts "In military hour format, when did the plane ACTUALLY arrive? (hh:mm)"
			arrival_hour = gets.chomp
			arrival_time = Time.parse(arrival_hour)
		
		difference = arrival_time - eta
		@cache << difference

		puts "Were there other flights you were expecting with this airline previously? (y/n)"
		answer = gets.chomp.downcase

		while answer == "y"
			puts "OK, lets do this again. In military hour format, what hour was the other flight supposed to arrive? (hh:mm)"
			hour = gets.chomp
			eta = Time.parse(hour)
			# debugger	

			puts "In military hour format, when did that plane ACTUALLY arrive? (hh:mm)"
			arrival_hour = gets.chomp
			# debugger
			arrival_time = Time.parse(arrival_hour)

			difference = arrival_time - eta
			@cache << difference

			puts "Any more flights? (y/n)"
			answer = gets.chomp.downcase		
		end	
		# cache

	end

end #<-- end of class!

plane = Airport.new
p plane.flight_info


