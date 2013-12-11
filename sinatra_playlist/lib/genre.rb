class Genre
	
	attr_accessor :music_collection

	def initialize(music)
		@music_collection = music
		@music = []
	end


	# # isolates all the artists and genres
	def organize_genre
		@music_collection.each do |track|
			entry = /(.*) \[([\w\-]*)\]/.match(track)
			next unless entry
			@music << {:artist_and_title => entry[1], :genre => entry[2]}  
		end
		@music
	end


# #specific genres, just the counts per genre

	def get_dance
		dance = []
		@music.each do |h|
			h.each do |k,v|
				# debugger
				if v == "dance"
					dance << h[:artist_and_title]
				end
			end	
		end
		count = dance.count
		"there are #{count} songs in the Dance genre"
	end

	def get_electro
		electro = []
		@music.each do |h|
			h.each do |k,v|
				# debugger
				if v == "electro"
					electro << h[:artist_and_title]
				end
			end	
		end
		count = electro.count
		"there are #{count} songs in the Electro genre"
	end

	def get_indie
		indie = []
		@music.each do |h|
			h.each do |k,v|
				# debugger
				if v == "indie"
					indie << h[:artist_and_title]
				end
			end	
		end
		count = indie.count
		"there are #{count} songs in the Indie genre"
	end

	def get_folk
		folk = []
		@music.each do |h|
			h.each do |k,v|
				# debugger
				if v == "folk"
					folk << h[:artist_and_title]
				end
			end	
		end
		count = folk.count
		"there are #{count} songs in the Folk genre"
	end

	def get_country
		country = []
		@music.each do |h|
			h.each do |k,v|
				# debugger
				if v == "country"
					country << h[:artist_and_title]
				end
			end	
		end
		count = country.count
		"there are #{count} songs in the Country genre"
	end

	def get_pop
		pop = []
		@music.each do |h|
			h.each do |k,v|
				# debugger
				if v == "pop"
					pop << h[:artist_and_title]
				end
			end	
		end
		count = pop.count
		"there are #{count} songs in the Pop genre"
	end

	def get_hiphop
		hiphop = []
		@music.each do |h|
			h.each do |k,v|
				# debugger
				if v == "hip-hop"
					hiphop << h[:artist_and_title]
				end
			end	
		end
		count = hiphop.count
		"there are #{count} songs in the Hiphop genre"
	end

	def get_house
		house = []
		@music.each do |h|
			h.each do |k,v|
				# debugger
				if v == "house"
					house << h[:artist_and_title]
				end
			end	
		end
		count = house.count
		"there are #{count} songs in the House genre"
	end

	def get_rap
		rap = []
		@music.each do |h|
			h.each do |k,v|
				# debugger
				if v == "rap"
					rap << h[:artist_and_title]
				end
			end	
		end
		count = rap.count
		"there are #{count} songs in the Rap genre"
	end

	# #lists all the artists and title within a specific genre
	# def get_dance_lf
	# 	dance = []
	# 	@music.each do |h|
	# 		h.each do |k,v|
	# 			# debugger
	# 			if v == "dance"
	# 				dance << h[:artist_and_title]
	# 			end
	# 		end	
	# 	end
	# 	"Dance genre: #{dance}"
		
	# end

	# def get_electro_lf
	# 	electro = []
	# 	@music.each do |h|
	# 		h.each do |k,v|
	# 			# debugger
	# 			if v == "electro"
	# 				electro << h[:artist_and_title]
	# 			end
	# 		end	
	# 	end
	# 	electro
	# end

	# def get_indie_lf
	# 	indie = []
	# 	@music.each do |h|
	# 		h.each do |k,v|
	# 			# debugger
	# 			if v == "indie"
	# 				indie << h[:artist_and_title]
	# 			end
	# 		end	
	# 	end
	# 	"Indie genre: #{indie}"
	# end

	# def get_folk_lf
	# 	folk = []
	# 	@music.each do |h|
	# 		h.each do |k,v|
	# 			# debugger
	# 			if v == "folk"
	# 				folk << h[:artist_and_title]
	# 			end
	# 		end	
	# 	end
	# 	"Folk genre: #{folk}"
	# end

	# def get_country_lf
	# 	country = []
	# 	@music.each do |h|
	# 		h.each do |k,v|
	# 			# debugger
	# 			if v == "country"
	# 				country << h[:artist_and_title]
	# 			end
	# 		end	
	# 	end
	# 	"Country genre: #{country}"
	# end

	# def get_pop_lf
	# 	pop = []
	# 	@music.each do |h|
	# 		h.each do |k,v|
	# 			# debugger
	# 			if v == "pop"
	# 				pop << h[:artist_and_title]
	# 			end
	# 		end	
	# 	end
	# 	"Pop genre: #{pop}"
	# end

	# def get_hiphop_lf
	# 	hiphop = []
	# 	@music.each do |h|
	# 		h.each do |k,v|
	# 			# debugger
	# 			if v == "hip-hop"
	# 				hiphop << h[:artist_and_title]
	# 			end
	# 		end	
	# 	end
	# 	"Hiphop genre: #{hiphop}"
	# end

	# def get_house_lf
	# 	house = []
	# 	@music.each do |h|
	# 		h.each do |k,v|
	# 			# debugger
	# 			if v == "house"
	# 				house << h[:artist_and_title]
	# 			end
	# 		end	
	# 	end
	# 	"House genre: #{house}"
	# end

	# def get_rap_lf
	# 	rap = []
	# 	@music.each do |h|
	# 		h.each do |k,v|
	# 			# debugger
	# 			if v == "rap"
	# 				rap << h[:artist_and_title]
	# 			end
	# 		end	
	# 	end
	# 	"Rap genre: #{rap}"
	# end


end


