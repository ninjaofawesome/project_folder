# Create a method in the dice class called `roll` that returns a random number
# between 1 and 6

#To test your solution run `rspec dice_spec.rb` in your terminal

class Dice

  def roll
  	1 + rand(6)
  end

end


#each the dice are rolled, the number that it lands on needs to be a random number.
# This was my first try.
# def Dice (roll)
# 	if roll > 0  && roll < 7
# 		puts "high roller!"
# 	else
# 		puts "your dice are for Dungeons and Dragons"
# end

# This was my second try.  No WAY this was going to work.  My brain was starting to show signs of strain.
# Needs a number called num, a number called min, a number called max, and a circumstance called new.

# def roll
# 	for num.each do
# 	if num > 0 && num < 7 
# 	else false	
# 	end
# end

# This was my third try.  I couldn't get the idea of how to return a random number, 
# so I cheated, googled "how to return a random number in ruby" and went to stack overflow.  
# But I gathered this wouldn't work either since the point was to use a conditional, AND I've never seen rand before.

# class Dice

#   def roll
#    1 + rand(6)
#   end

# end

# I had a feeling I wasn't right on this one either.  I started over AGAIN.

# class Dice
# 	def roll(Dice)

# 		if 
# 			Dice.new > 0 
# 		elseif
# 		7 < Dice.new
# 		else
# 			"this is not possible with one die"
# 		end
# 	end
# end

# At this point I am frustrated, and I'm not sure if I even have Rspec set up right?
# 

# def Dice 
# 	for each.roll do {1 + rand(6)}
		

# 	def roll (num)
# 		num > 0 && 7 < num
# 	end

# Eventually I just copied something from my classmates, but otherwise I'm totally lost.
# end