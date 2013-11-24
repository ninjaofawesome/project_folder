########################
# NYC PIGEON ORGANIZER #
########################

# Start with the following collected data on NYC pigeons.

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 

new_pigeon = {}
pigeon_data.each do |key, value|
  value.each_pair do |attributes, name_array|
    name_array.each do |name|
      if new_pigeon[name].nil?
        new_pigeon[name] = {}
      end
      new_pigeon[name][:color] = [] unless new_pigeon[name][:color]
      if key == :color
        new_pigeon[name][key] << attributes
      else
        new_pigeon[name][key] = attributes
      end

    end

  end

end
puts new_pigeon.inspect

# each_pigeon = {}
# pigeon_data.each |key, value|
# 	# puts key
# 	# puts value
# 	#  each_pigeon[:key[0..2]] = value
# 	value.each do |new_key, new_value|
# 		puts new_key
# 		puts new_value 


# puts each_pigeon





