class Array
	def includes_ashley?
		self.include? "ashley"
	end
end

["ashley", 3, 4].includes_ashley?

# 1. creates class and method definition (lines 8-12)
# 2. looks at the created array on line 14, calls includes_ashley on it
# 3. executes what's on line 9
# 4. finds the function we called on line 10
# 5. line 10 self = ["ashley", 3, 4] then it calls the method include? with 
# the parameter "ashley"
# 6. goes into the ????RUBY LANG finds the definition of .include? and executes it
# 6.5 .include? returns a value => true
# 7. line 11 ends (true)
# 8. line 12 ends (true)
# 9. line 14 RESOLVES to the value true

# Methods have a RETURN value
# Methods recieve arguments or parameters (if they need to)
# Methods arguments can be called on OBJECTS

# If you don't define a method in a class, it belongs to the class object in the program.
# so use the methods in a class.