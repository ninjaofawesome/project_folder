require 'bundler'
Bundler.require

module Quiz
	class Take_quiz < Sinatra::Application

		get '/' do
		  erb :multichoice
		end

		# get'/image' do
		# 	erb :imagechoice
		# end

		post '/results' do
			# results = Extrapolation.new({"lifestyle_prefs"=>{"0"=>"true", "1"=>"false", "2"=>"true", "3"=>"false", "4"=>"true"}, "temperament"=>{"0"=>"true", "1"=>"true", "2"=>"true", "3"=>"false", "4"=>"false"}})
			# @answer = results.get_results

			erb :results
		end

	



	end#<---this is the end of the class	
end#<---this is the end of the module