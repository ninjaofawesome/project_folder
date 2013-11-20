# prereqs arrays, methods, conditional logic
# part I. implement a maximum method that takes and array and returns the largest element of the array
# part II. reimplement this method as an instance method on the array class

array = [1, 2, 3, 4, 5]
	def maximum(array)
	array.max
end


# now rewrite this as a method on the array class
class Array
  def self.maximum
  	array = [1, 2, 3, 4, 5]
  	array.max

  end
end
Array.maximum