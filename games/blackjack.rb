#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game. 
 # A player gets dealt two cards which have values between 1-11.  
 # After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. 
 # A player is allowed to "hit" up to two times.  
 # After each hit you should ask if they want to hit or stay and display the total value of their cards. 
 # If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), 
# alter the game so that a player can "hit" as many times as they want.


class Deal
		# Needs the hand to be dealt
		puts "lets play blackjack.  Here are your cards."
		@cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
		@card = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

		puts "your first card is #{@card[rand(11)]}"
		puts "your second card is #{@cards[rand(11)]}"

		# needs the hand to be compared to 21
		def self.compare
			if 
			@card + @cards <= 21
				puts "You may hit or stay up to two times in this game.  If you would like to hit, type hit.  If you would like to stay, type stay."
			else
				puts "You blew it."
			end
		end




	# needs the option to hit
	# needs the option to stay
	# needs the final option
end


# class Deal
# 	def initialize
# 	@card = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# 	@cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]	
# 	end

# 	def self.two_cards
# 	puts "Lets play blackjack!  You'll be dealt two cards, then let me know if you want to hit or stay."
# 	puts "your first card is @{card[rand(11)]}"
# 	puts "your second card is @{cards[rand(11)]}"
# 		if card[rand(11)] + cards[rand(11)] <= 10
# 			puts "Your numbers are low!  If you want to hit, type hit.  Otherwise, type stay"
# 			low = gets.chomp
# 	end
# end