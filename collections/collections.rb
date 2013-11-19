# # 1. sort the following array in ascending order
array = ["blake", "ashley", "scott"]
array.sort
 
# # 2. sort the following array in descending order
 array2 = ["blake", "ashley", "scott"]
 array2.sort.reverse

# # 3. put the following array in reverse order
array3 = ["blake", "ashley", "scott"]
array3.reverse


# # 4. grab the second element in the array
  array4 = ["blake", "ashley", "scott"]
  array4[1]

# # 5. print each element of the array to the console
  array5 = ["blake", "ashley", "scott"]
  puts array5


# # 6. create a new array in the following order
  array6 = ["blake", "ashley", "scott"] 

  array6.delete ("ashley")
  array << "ashley"

  ####pls note, that wasn't my answer.  I apparently didn't answer this the first time.


#   should transform into
  array6 = ["blake", "scott", "ashley"]
  
# 7. using the following array create a hash where the elements in the array are the keys and the values of the hash are those elements with the 3rd character changed to a dollar sign.
  array7 = ["blake", "ashley", "scott"]
  hash1 = {"blake" => array7[0].gsub("a", "$"),
            "ashley" => array7[1].gsub("h", "$"),
            "scott" => array7[2].gsub("o", "$")}

  ####Alternate:
  # array = ["blake", "ashley", "scott"]
  # hash = {}
  # array.each do |name|
  #   hash[name] = name[0..1] + "$" + name[3..name.length]
  # end
 
# 8. create a hash with two keys, "greater_than_10", "less_than_10" and their values will be an array of any numbers greater than 10 or less than 10 in the following array
 hash2 = {:greater_than_10 => [100, 1000, 15, 100],
          :less_than_10 => [5, 2, 3, 1, 1]} 

####did not get to this, this is someone's answer
# math [100, 1000, 15, 100, 5, 2, 3, 1, 1]
# greater_than_10 = []
# less_than_10 = []
# math.each do |x|
#   if x > 10
#       greater_than_10 << x
#     end
#   end

# math.each do |x|
#   if x < 10
#     less_than_10 << x
#   end
# end

# the_10_hash == {:greater_than_10 => greater_than_10, :less_than_10 => less_than_10}

# 9. find all the winners and put them in an array

###I also did not do this, copied this as well.
# teachers - {:blake => "winner", :ashley => "loser", :caroline => "loser" carlos => "winner"}
#   teachers.each do |key, value|
#     value == winner ? winners << key: nil
#   end


# 10. add the following arrays
#   [1,2,3] and [5,9,4]

# Did not get to this either, copied answer.

# [1, 2, 3].push([5, 9, 4]).flatten OR [1,2,3].concat([5, 9, 4]) OR [1,2,3] + [4,5,6]

# 11. find all words that begin with "a" in the following array
#   ["apple", "orange", "pear", "avis", "arlo", "ascot" ]

# did not do this one either.  Copied answer.
#   stuff = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
#   stuff.select {|item| item[0] == "a"}  

# same as saying
# container = []
# stuff.each do |item|
#   if item[0] == "a"
#     container << item
#   end
# container
# end

# 11. sum all the numbers in the following array
#   [11,4,7,8,9,100,134]
# 12. Add an "s" to each word in the array except for the 2nd element in the array?
#   ["hand","feet", "knee", "table"]
# CHALLENGE

# word count

# "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"

# Count how many times each word appears in my story.
# Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.

# song library

# convert the following array of song titles
  
#   ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]

# to a nested hash of the form
# {:artist1 => :songs => [], :artist2 => :songs => []}
# []