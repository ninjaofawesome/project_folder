class Person
  def name
    "Matz"
  end
 
 def self.age
    "100"
 end

 p self.age

end

# p Person.name 
# people = Person.new
# p people.name

# p Person.age


# class Hannah
# end

# Hannah.class

# class Class
#   def name
#     "#{Hannah}"
#   end
# end

# p Class.name

# class Dog

#   def initialize
#     @name = "snoopy"
#     @color = "holstein"
#   end

# end

# Dog.class

# class Class
#   def do_something
#     "#{@name} and #{@color}"
#   end
# end

# p Class.do_something




# class Person
#   def name
#     puts "Matz"
#   end
# end
 
# Person.class_eval do
#   def name
#     puts "Matz"
#   end
# end


# class Person
#   def self.species
#     "Homo Sapien"
#   end
# end
 
# class Person
#   class << self
#     def species
#       "Homo Sapien"
#     end
#   end
# end
 
# class << Person
#   def species
#     "Homo Sapien"
#   end
# end
 
# Person.instance_eval do
#   def species
#     "Homo Sapien"
#   end
# end
 
# def Person.species
#   "Homo Sapien"
# end