class Song


	attr_accessor :music_collection

	def initialize(music)
		@music_collection = music
	end

	#lists all the information about each song
	def organize_music
		music = []
		@music_collection.each do |track|
			entry = /(.*) \- (.*) \[([\w\-]*)\]\.(\w+)$/.match(track)
			next unless entry
			 music << { :artist => entry[1], :title => entry[2], :genre => entry[3], :format => entry[4],} 
			# p music
		end
		music
	end


end

