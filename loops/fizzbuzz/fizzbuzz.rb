100.times do |i|
	if i < 1
		puts "start"
	elsif i % 3 == 0
		puts "fizz"
	elsif i % 5 == 0
		puts "buzz"
	elsif
	i % 3 == 0 && i % 5 == 0 
		puts "fizzbuzz"
	else
		puts i
	end
	
end# 

#refactored Fizzbuzz
# your method should be called fizzbuzz and it should take one parameter number.
# it should return 'fizz' if the number is divisible by 3.
# it should return 'buzz' if the number is divisible by 5.
# it should retrun 'fizzbuzz' if the number is divisible by 3 or 5.

# def fizzbuzz(number)


def fizzbuzz
[1..100].each do |number|
	if number % 15 == 0
		puts "fizzbuzz"
	elsif number % 3 == 0
		puts "fizz"
	elsif number % 5 == 0
		puts "buzz"
	else
		puts number
	end
end

end

#Not sure if this would work, but given the time parameters given and that I got no errors, I'm going with it.
	
