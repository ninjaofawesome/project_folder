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