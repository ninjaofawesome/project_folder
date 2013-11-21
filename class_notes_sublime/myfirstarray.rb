def my_first_each(array)
	#yeild to the block just the first element in the array
	#return the original array
end

def my_first_each(array)
	yeild array[0]
	return array
end
array1 = [1, 2, 3]
my_first_each(array1) {|first_element| puts first_element}

def my_each(array)
#iterates through an array
	#some kind of loop
	#yield access each element of the array
	#return the orignal array
#yield the the block with each element in the array
#returns the original array
	i = 0
	while i < array.length
		yield array[i]
		i = i + 1
	end
	array
end
#______blueprint
program: 

array = [1, 2, 3]
my_each(array) {|element| puts element}

def yielder
	a = 7
	b = 5
	if block_given?
	yield a, b
	end
end

yielder {|first, second| puts first}