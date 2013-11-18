#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.





@@answers = ["unclear", "answer points to yes", "answer points to no", "flatiron school rules"]

class Eightball
 def self.shake
 	puts "Do you want to shake the magic eight ball? (y/n)"

 	fortune=gets.chomp

 	if fortune == "y"
 		puts @@answers[rand(4)]
	else
		puts "you're no fun.  Goodbye." 
	end	
 end


end

Eightball.shake

