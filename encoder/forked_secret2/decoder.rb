
my_secret = "stac4ekil4t'nod4i"
my_secret1 = my_secret.gsub("4", " ")
my_secret2 = my_secret1.reverse
my_secret3 = my_secret2.gsub(/^[a-z]|\s+[a-z]/){ |a| a.upcase}

puts my_secret3

# require './encoder.rb'
# my_secret5 = my_secret4
# my_secret6 = my_secret5.gsub("4", " ")
# my_secret7 = my_secret6.reverse
# my_secret8 = my_secret7.gsub(/^[a-z]|\s+[a-z]/){ |a| a.upcase}

# puts my_secret8
