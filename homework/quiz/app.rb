require 'bundler'
Bundler.require

Dir["./lib/*"].each {|file| require file }

module Quiz
	class Take_quiz < Sinatra::Application

		get '/' do
		 

		  erb :multichoice
		end

		get '/east_coast' do
			erb :east_coast
		end

		get '/west_coast' do
			erb :west_coast
		end

		post '/results' do
			 answers = Extrapolation.new(params)
			 answers.get_results
			

			 if answers.west_coast < 5
			 	erb :east_coast
			 else
			 	erb :west_coast
			 end
		end

	



	end#<---this is the end of the class	
end#<---this is the end of the module