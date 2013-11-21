
ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
			{"KALE" => {:price => 3.00,:clearance => false}},
			{"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
			{"ALMONDS" => {:price => 9.00, :clearance => false}},
			{"TEMPEH" => {:price => 3.00,:clearance => true}},
			{"CHEESE" => {:price => 6.50,:clearance => false}},
			{"BEER" => {:price => 13.00, :clearance => false}},
			{"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
			{"BEETS" => {:price => 2.50,:clearance => false}}]

COUPS = [	{:item=>"AVOCADO", :num=>2, :cost=>5.00},
			{:item=>"BEER", :num=>2, :cost=>20.00},
			{:item=>"CHEESE", :num=>3, :cost=>15.00}]

#randomly generates a cart of items
def generateCart
	cart = []
	rand(20).times do
		cart.push(ITEMS.sample)  
	end
	cart
end

#randomly generates set of coupons
def generateCoups
	coups = []
	rand(2).times do
		coups.push(COUPS.sample)
	end
	coups
end
# Code generates a random cart of items and a random set of coupons. 
# Implement a method checkout to calculate total cost of a cart of items and apply discounts and coupons as necessary.

def checkout(shopping_cart, coupons)
	array = (shopping_cart + coupons).flatten!
	array.collect {|item| while item.any? == :clearance
								array.push(item * .8)
						  while item.any? == #thesamething#
						  		array.push(item * .4)
						   end }
	puts checkout

end
checkout
end

checkout(cart, coups)


#this just got WAY complicated.  Not using this way currently.
# class Green_grocer

# ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
# 			{"KALE" => {:price => 3.00,:clearance => false}},
# 			{"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
# 			{"ALMONDS" => {:price => 9.00, :clearance => false}},
# 			{"TEMPEH" => {:price => 3.00,:clearance => true}},
# 			{"CHEESE" => {:price => 6.50,:clearance => false}},
# 			{"BEER" => {:price => 13.00, :clearance => false}},
# 			{"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
# 			{"BEETS" => {:price => 2.50,:clearance => false}}]

# COUPS = [	{:item=>"AVOCADO", :num=>2, :cost=>5.00},
# 			{:item=>"BEER", :num=>2, :cost=>20.00},
# 			{:item=>"CHEESE", :num=>3, :cost=>15.00}]

# attr_reader :cart, :coups

# #initialize stuff
# def initialize(cart, coups)
# 	@cart = cart
# 	@coups = coups
# end

# #randomly generates a cart of items
# def generateCart
# 	@cart = []
# 	rand(20).times do
# 		@cart.push(ITEMS.sample)  
# 	end
# 	cart
# end


# #randomly generates set of coupons
# def generateCoups
# 	@coups = []
# 	rand(2).times do
# 		@coups.push(COUPS.sample)
# 	end
# 	coups
# end

# def checkout
# 	checkout = @cart + @coups.flatten!
# 	#gathers the total to an array and flattens it
# 		new_cart = Hash[*checkout.flatten]
# 		#makes checkout into a new_cart as a cart of key/value pairs


# end


# end


