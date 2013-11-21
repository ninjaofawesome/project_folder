
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
	# Cart, an array of items
	# Items, each one is a nested hash.  Top level key is the name and its values are
	# attributes of the item, price and clearance item.
# 	cart =  [{"AVOCADO" => {:price => 3.00, :clearance => true}},
# 			{"KALE" => {:price => 3.00,:clearance => false}},
# 			{"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
# 			{"ALMONDS" => {:price => 9.00, :clearance => false}},
# 			{"TEMPEH" => {:price => 3.00,:clearance => true}},
# 			{"CHEESE" => {:price => 6.50,:clearance => false}},
# 			{"BEER" => {:price => 13.00, :clearance => false}},
# 			{"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
# 			{"BEETS" => {:price => 2.50,:clearance => false}}]
# end

#randomly generates set of coupons
def generateCoups
	coups = []
	rand(2).times do
		coups.push(COUPS.sample)
	end
	coups
		# List of coupons, similar structure, which gives us the items' name, cost and number
		# Items, each one is a nested hash.  Top level key is the name and its values are
		# attributes of the item, price and clearance item.
	# coups = [	{:item=>"AVOCADO", :num=>2, :cost=>5.00},
	# 		{:item=>"BEER", :num=>2, :cost=>20.00},
	# 		{:item=>"CHEESE", :num=>3, :cost=>15.00}]
end

# How to approach this problem:
# 1. Get the count of each item in the Cart.

def cart_count(cart)
	total = {}
	#this creates a new hash for all the items in the hash
		cart.each do |item|
		#go over each item in your pre-established cart, do something with it.  You will now refer to this as item.  
		#Go one level down in the hash.
			item.each do |name, description|
			#go over each individual item's name and description in the cart.
			#Go one level down in the hash.
				total[name] = cart.select{|other_item| other_item == item}.size
				#put stuff in the total hash, organized by name.  In the existing cart, size returns the total number in the cart as
				#other_item == item is saying "other item is equal to item in the cart"
			end
		end
	counts
	#why do I call this here??  Do not understand?
end

# Now the cart count is returned.
# 2. update the cart
def cart_update(cart, total)
	#defines a new method in where we'll be working with the first cart array and the total hash.
	og_cart = cart.uniq!
	#start off with the cart array, take out any duplicates from the cart FOREVER when using the original gangster cart
		og_cart.each do |item|
		#go through the now mushed cart, do something with each item.  The item is the constant listed above.
		#go one level down in the array.
			item.each do |name, description|
			#now with each item in the array, do something with the name and the description of each item.
			#go one level down in each hash
				total.each do |next_item, description|
				#now go in to the total and go to the key/value pair now called next_item and description
					description[:count] = number if next_item == name
					#this says "assign to the description key a number if the next item is a name"
				end
			end
		end
	end


# 3. Now apply all the discounts to items in the cart.
# here are the conditions we can have and need to be accounted for:
# a. Full price, no coupons or clearance
# b. No coupons, but clearance
# c. Clearance and coupons
# d. Coupons but no clearance.

# a. full price items.
def full_price_items(cart, cost)
#defines a new method for full price items where we'll be working again with the cart and the cost.
	cart.each do |item|
	#for each item in the cart (now called item) do something with it.
		cost += (description[:cost] * description[:count])
		#in this case, the cost is added to or equal the description cost key times the description count key
	end
end
cost
end


def clearance_no_coupons(cart, cost)
	cart each do |item|
		cost +=(description[:cost] * 0.8)

end

def clearance_and_coupons(cart, cost)
	cart each do |item|

end




end
