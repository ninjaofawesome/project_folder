# Apple Picker

## Instructions

# Create a method, `apple_picker`, that will pick all the apples out of an array. Implement this only using `each`.

# ruby
# apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]

## Challenge
# Implement it with `collect` and then implement it with `select`. Write a sentence about how `select` differs from `collect`.

apple = ["apple", "orange", "apple"]

apple.each do |name|
	if name == "apple"
		apple_dapple = Array.new
			apple_dapple << "apple"
		puts apple_dapple
end

apple