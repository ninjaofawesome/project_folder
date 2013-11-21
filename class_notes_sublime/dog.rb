# See "Classes-Ashley 11/20" notes

class Dog
	attr_writer :whatever
	attr_reader :breed
	attr_accessor :name
	#this is the longhand version
	# #getter- returne sthe value of the instance variable name
	# 	def name
	# 		@name
	# 	end
	# 	#setter- changes the value of the instance variable name
	# 	def name = new_name
	# 			@name = new_name
	# 		end

	def initialize(thing1, thing2)
		@breed = thing1
		@name = thing2
	end


	def bark
	puts "bark, my name is #{@name}"
	end

	def snuggle
		puts "skjfskjfsl;kjfsd;l"
	end
end

puts my_dog = Dog.new("Chihuahua", "Rupert")