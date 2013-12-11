class Artist


	attr_accessor :music_collection

	def initialize(music)
		@music_collection = music
		@format = []
		@artist = []
		@artist_count = []
		@biglist = []
		@artists = []
		@counts = Hash.new(0)
	end

	#lists just the individual artist/bands names
	def artist_name
		@music_collection.each {|track|
			entry = /(.*) \- (.*)([\w\-]*)/.match(track)
			next unless entry
			@artist << entry[1] 
		}
		artists = @artist.uniq
		artists
	end

	#counts the total numbers of artists/bands (number)
	def band_count
		@music_collection.each {|track|
			entry = /(.*) \-/.match(track)
			next unless entry
			@artist_count << entry[1]}
			artists = @artist_count.uniq
			artists.count
			#total = artists.count
			# p "there are #{total} artists in this queue"

	end

# isolates all the artists and songs
	def big_list
		@music_collection.each do |track|
			entry = /(.*) \- (.*)[^\[([\w\-]*)\]\.(\w+)$]/.match(track)
			next unless entry
			@biglist << "#{entry[1]}: #{entry[2]}" 
		end
		@biglist
	end

# #An overall count of all the songs by artist

	def artist_count
		@music_collection.each do |track|
			entry = /(.*) \-/.match(track)
			next unless entry
			@artists << entry[1]
		end
		@artists.each do |artist| 
			@counts[artist] += 1 
			end
		@counts
	end


	#just lists whatever the artist wants to put in for file formats.  Consider this a bonus round.
	# def format_lists
	# 	@music_collection.each {|track|
	# 		entry = /\.(\w+)$/.match(track)
	# 		next unless entry
	# 		@format << {:preferred_format => entry[1]} 
	# 		# p music
	# 	}
	# 	@format
	# end


	def salt_the_earth
		p "Do you want to clear out your Music library? (y/n) WARNING: THIS CANNOT BE UNDONE."
		answer = gets.chomp
			if answer == "y"
				@music_collection.clear
				"Music library successfully deleted."
			else answer == "n"
				"Music library remains intact."
			end

	end



end


