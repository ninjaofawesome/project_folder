require 'sinatra/base'

module Game
	class RPS_app < Sinatra::Application

		get '/throw/:type' do
		  computer_move = ["rock", "paper", "scissor"].sample

		  if params[:type] == "rock"
			  	if computer_move == "paper"
			  		"Computer chose #{computer_move}! Too bad for you, the computer won this round."
			  	elsif computer_move == "scissor"
			  		"Computer chose #{computer_move}! Congrats you won!"
			  	elsif computer_move == "rock"
			  		"Computer chose #{computer_move}! It's a tie!"
			    else 
			  	    "not a valid answer!"
			    end
		   elsif params[:type] == "paper"
		   	    if computer_move == "paper"
			  		"Computer chose #{computer_move}! It's a tie!"
			  	elsif computer_move == "scissor"
			  		"Computer chose #{computer_move}! Too bad for you, the computer won this round."
			  	elsif computer_move == "rock"
			  		"Computer chose #{computer_move}! Congrats you won!"
			    else 
			  	    "not a valid answer!"
			    end
		    elsif params[:type] == "scissors"   
		   		if computer_move == "paper"
			  		"Computer chose #{computer_move}! Too bad for you, the computer won this round"
			  	elsif computer_move == "scissor"
			  		"Computer chose #{computer_move}! It's a tie!"
			  	elsif computer_move == "rock"
			  		"Computer chose #{computer_move}! Congrats you won!"
			    else 
			  	    "not a valid answer!"
			    end

			 else 
			 	"not a valid answer!  Try again!"
			 end

		
		end
	end



end#<--end of module!
