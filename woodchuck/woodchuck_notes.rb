#Notes from class


# class Woodchuck

# 	attr_accessor :chuck_count

# 	def initialize
# 		@chuck_count = 0
# 	end

# 	# def chuck_wood
# 	# 	chuck_count += 1 #(means chuck count plus one)
# 	# end

# 	def what_is_self
# 		puts self.class
# 	end

# 	def self.what_is_self
# 		puts self.class
# 	end

# end

# my_woodchuck = Woodchuck.new


# puts "what is self INSTANCE METHOD"
# puts my_woodchuck.what_is_self

# puts "what is self's class INSTANCE METHOD"
# puts my_woodchuck.what_is_self.class

# puts "what is self CLASS METHOD"
# puts Woodchuck.what_is_self


# puts "what is self's class INSTANCE METHOD"
# puts Woodchuck.what_is_self.class

#USE THIS CONCEPT IN PLAYLISTER!


class Woodchuck

	attr_accessor :chuck_count
	@@woodchuck_count = 0

	WOODCHUCKS = []

	def initialize
		@chuck_count = 0
		@@woodchuck_count += 1
		WOODCHUCKS << self
	end

	def chuck_wood
		chuck_count += 1 #(means chuck count plus one)
	end

	def self.woodchuck_count
		@@woodchuck_count
	end



end

Woodchuck.new
Woodchuck.new
Woodchuck.new
Woodchuck.new

puts Woodchuck::WOODCHUCKS.each do |woodchuck| 
	woodchuck.chuck_wood
end

puts Woodchuck::WOODCHUCKS.inspect


# class Woodchuck

# 	attr_accessor :chuck_count
# 	@@woodchuck_count = 0

# 	def initialize
# 		@chuck_count = 0
# 		@@woodchuck_count += 1
# 	end

# 	def chuck_wood
# 		chuck_count += 1 #(means chuck count plus one)
# 	end

# 	def self.woodchuck_count
# 		@@woodchuck_count
# 	end



# end

# my_woodchuck1 = Woodchuck.new
# my_woodchuck2 = Woodchuck.new
# my_woodchuck3 = Woodchuck.new
# my_woodchuck1 = Woodchuck.new
# my_woodchuck2 = Woodchuck.new
# my_woodchuck3 = Woodchuck.new

# puts Woodchuck.woodchuck_count



