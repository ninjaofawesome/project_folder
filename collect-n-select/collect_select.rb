# Implement your own versions of collect and select
@array = [1, 2, 3]

def my_collect
@array.collect {|number| number * 2}
end
puts my_collect 

def my_select
@array.select {|number| number.odd? }
end
puts my_select

# CHALLENGE:
# Implement these methods as instance methods on the array class.