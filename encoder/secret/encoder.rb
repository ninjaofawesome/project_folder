# secret = "I have a crush on every boy"

# #take second half of string and move it to the front


# puts reversed_string = secret.reverse

# #reverse the satement
# puts reversed_string

# #replaces the spaces with the last letter
# puts step2_string = reversed_string.gsub(" ", secret[-1])

# #converts letter into integer.  Replace a with 6
# step3_string = step2_string.gsub("a", "6")


puts "I know you have a crush on someone, but I'll never tell.  Tell me their name and why they make you swoon, and I'll encode it."

secret = gets.chomp.to_s

secret_swapcase = secret.swapcase
secret_succ = secret_swapcase.succ
secret_reverse = secret_succ.reverse
secret_sub = secret_reverse.gsub(' ','<3')
secret2_sub = secret_sub.gsub(".", "loveydovey!")
secret3_sub = secret2_sub.gsub(",", "dreamboat!")
secret4_sub = secret3_sub.gsub("e", "adorable!")
secret5_sub = secret4_sub.gsub("a", "truelove!")
secret6_sub = secret5_sub.gsub("E", "adorable!")
secret7_sub = secret6_sub.gsub("A", "truelove!")

puts "Oooh, that's a good one.  Copy and paste your message, email it, then see if your beloved can decode it. '#{secret7_sub}' "
