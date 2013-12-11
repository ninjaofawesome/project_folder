Dir["./lib/*"].each {|file| require file }
require 'bundler'
Bundler.require

module Playlist

	class Playlister < Sinatra::Application
		
		get '/song' do
			song = Song.new(Dir.new("/Users/hannahnordgren/documents/project_folder/sinatra_playlist/public/data").entries)
			@output = song.organize_music

			erb :song
		end 

		get '/genre' do
			genre = Genre.new(Dir.new("/Users/hannahnordgren/documents/project_folder/sinatra_playlist/public/data").entries)
			@genre_output = genre.organize_genre
			@genre_dance = genre.get_dance
			@genre_electro = genre.get_electro
			@genre_indie = genre.get_indie
			@genre_folk = genre.get_folk
			@genre_country = genre.get_country
			@genre_pop = genre.get_pop
			@genre_hiphop = genre.get_hiphop
			@genre_house = genre.get_house
			@genre_rap = genre.get_rap
			erb :genre
		end

		get '/artist' do
			artist = Artist.new(Dir.new("/Users/hannahnordgren/documents/project_folder/sinatra_playlist/public/data").entries)
			@artist_output = artist.artist_name
			@band_count = artist.band_count
			@big_list = artist.big_list
			@artist_count = artist.artist_count
			# @salt_the_earth = artist.salt_the_earth
			erb :artist
		end


	end


end
