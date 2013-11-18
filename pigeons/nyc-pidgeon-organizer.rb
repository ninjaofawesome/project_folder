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

new_pigeon = {}
pigeon datea.each do |key, value|
  # goes over the keys of color, gender and lives, puts out EVERYTHING in the values at this point.
  value.each_pair do |attributes, name_array|
  #goes over the attributes of each pigeon (eg Purple, female) and an array of names
    name_array.each_do |name|
      #theo
      if new_pigeon[name].nil?
        new_pigeon[name] = {}
      end
      #returns an empy hash unless one already exists, and then it skips over it.
      new_pigeon[name][:color] = [] unless new_pigeon[name][:color]
      #this is the same as the statement above, except in a "less positive" format.  If you've already added the color, skip it.
      if key == :color
        new_pigeon[name][key] << attribute
      else
        new_pigeon[name][key] = attribute
      end

    end

  end
end
# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }


pigeon_individual = {
  "Peter Jr." => {
    :color => {"purple", "gray"}
    :gender => {"male"}
    :lives => {"Library"}
  }

  "Theo" => {
    :color => {"purple", "gray"}
    :gender => {"male"}
    :lives => {"Subway"}
  }

  "Lucky" => {
    :color => {"purple"}
    :gender => {"male"}
    :lives => {"Central Park"}
  }

  "Ms. K" => {
    :color => {"gray", "white"}
    :gender => {"female"}
    :lives => {"Central Park"}
  }    

  "Alex" => {
    :color => {"white", "brown"}
    :gender => {"male"}
    :lives => {"Central Park"}
  }

  "Queenie" => {
    :color => {"white", "brown"}
    :gender => {"female"}
    :lives => {"Subway"}
  }

  "Andrew" => {
    :color => {"white"}
    :gender => {"male"}
    :lives => {"City Hall"}
  }
}
