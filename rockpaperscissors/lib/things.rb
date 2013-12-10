# class Things
	# attr_accessor :rock, :paper, :scissor

	# 	@@user_score = []
	# 	@@cpu_score = []

	# def initialize
	# 	@array = ["rock", "paper", "scissor"]
	# 	@moves = []
	# 	play_game
	# end

	# def play_game
	# 	puts "lets play rock, paper, scissors against a computer.  What do you want to play? (rock/paper/scissor)"
	# 	answer = gets.chomp.downcase
	# 	@moves << answer
	# 	if @answer == "rock"
	# 		play_rock
	# 	elsif @answer == "paper"
	# 		play_paper
	# 	else @answer == "rock"
	# 		play_rock
	# 	end
	# end

	# def computer_move
	# 	@@cpu_move = @array.sample
	# end

	# def play_rock
	# 	computer_move 
	# 	if @answer == "paper"
	# 		puts "too bad for you, computer wins this round"
	# 		@@cpu_score << self
	# 	else @answer == "scissor"
	# 		puts "congrats you beat the computer!"
	# 		@@move_score <<self
	# 	end
	# 	while @answer == answer
	# 		puts "it's a tie! Try again! What would you like to play? (rock/paper/scissor)"
	# 		answer = gets.chomp.downcase 
	# 	end
	# end

	# def play_paper
	# 	computer_move 
	# 	if @answer == answer
	# 		puts "it's a tie"
	# 	elsif @answer == "scissor"
	# 		puts "too bad for you, computer wins this round"
	# 		@@cpu_score << self
	# 	else @answer == "rock"
	# 		puts "congrats you beat the computer!"
	# 		@@move_score <<self
	# 	end

	# end

	# def play_scissor
	# 	computer_move 
	# 	if @answer == answer
	# 		puts "it's a tie"
	# 	elsif @answer == "rock"
	# 		puts "too bad for you, computer wins this round"
	# 		@@cpu_score << self
	# 	else @answer == "paper"
	# 		puts "congrats you beat the computer!"
	# 		@@move_score <<self
	# 	end
	# end

# end

# Things.new

