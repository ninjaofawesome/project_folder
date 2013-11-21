# How to approach this problem:

# Cart, an array of items
# Items, each one is a nested hash.  Top level key is the name and its values are
# attributes of the item, price and clearance item.
# List of coupons, similar structure, which gives us the items' name, cost and number

1. Get the count of each item in the Cart.  This is the one that Nikki did.
	
	def count_cart_items(cart)
		counts = {}
		#create a new hash to reference later
			cart each do |item|
				#go over each item in the cart 
				item.each do |name, attributes|
				#go over each item within the hash
					counts[name] = cart.select{|other_item| other_item == item}.size
					#go over each item in the cart and looks for duplicates in a duplicate list. .size indicates the size of the new list.
				end
			end
			counts
		end

the count is returned.
2. update the cart
def update_cart_counts(cart, counts)
	#passes the cart in
	cart.uniq!
	#this mutates the original cart, removing the additional items that are duplicated.
		cart.each do |item|
		#iterate though the array.  Each thing should be one of the hashes
			item.each do |name, attributes|
			# for each key and value within the item hashes do 
				counts.each do |item2, number|
				#in the counts hash from above, there will be an item(2) and a number for it.  Do this to it.
					attributes[:count] = number if item2 == name
					#now with the attributes hash, add a key called count.  Set it equal to the number.  If item2 is the name.
				end
			end
		end		
	end
 counts = count_cart_items(ITEMS)
 update_cart_counts(ITEMS, counts)

 3.Now the count is there and there are no duplicates.  Now update the coupons and the discounts.  
 	
 #a.if any items are on clearance, discount the item 20%.

	#you need to figure out what is going on here line by line.  Good luck yo.

 	def update_coupons_for_clearance_discount
 		##creates a new method to update the coupons
 		COUPS.each.do |coupon|
 		##Go through each item on the COUPS list.  do something with each item, which you will now call coupon.  
 		##Go one level down in the COUPS.
 			ITEMS.each do |item|
 			##Now go through each item on the ITEMS list and do something with each item. You will now call this item.
 			##Go one level down in ITEMS.
 				items.each do |name, attributes|
 				##Typo?  Should be item?  Anyways, with each item in the ITEMS list, do something with the name and
 				##the attribute it has.  Go one level down.
 					coupon[:cost] = coupon[:cost] * 0.8 if coupon[:item] == name && attributes[:clearance]
 					##this says if each coupon cost key from the COUPS list equals the coupon applied IF the coupon 
 					##name and the coupon clearance attributes are true.
 				end
 			end
 		end
 	end

 #just the clearance items

def clearance_items(cart, cost)
##defines a new method to update the clearance items.  We'll be working with cart and cost.
	cart.each do |item|
	##for each item in the cart do something with it.  We will be refering to this as item.
		item.each do |name attribute|
		#for each item, do something with the name attribute.
			if attribute[:clearance]
			##If the attribute has clearance on it do the next line
				cost += (attribute[:price] * attribute[:count]) * 0.8
				##take the cost and add it or if it is equal to (the attribute cost times the attribute count) times .8
				attribute[:count] = 0
				##the attribute count is now zero.
			end
		end
	end
	cost
end

#the full price items
def full_price_items(cart, cost)
#defines a new method for full price items where we'll be working with the cost and the cart
  cart.each do |item|
  #for each item in the cart do something to it.  It will be referred to as item.
    item.each do |name,attribute|
    #for each item do something with the key/value pair, now referred to as name and attribute
      cost += (attribute[:price] * attribute[:count])
      #add it to or equal it to the attribute price key times the attribute count key
    end
  end
  cost
  #again, why put this here?
end

# This is applying the coupons

def coupon_items(cart, coupons)
	cost = 0
	cart.each do |item|
		item.each do |name, attributes|
		#we want to make sure we have the minimum # of items to apply the coupon
			coupons.each do |coupon|
				if name == coupon [:item] && attributes[:count] >= coupon[:num]
				#add the item to the total cost
				cost += coupon[:cost]
				#paid for the number of items reflected in the coupon
				attributes[:count] = attributes[:count] - coupon[:num]
				end
			end
		end
	end
	cost
end


 
generated_coupons = generate_coupons
counts = count_cart_items(ITEMS)
#update a constant called items
cart = update_cart_counts(ITEMS, counts)
#update a constant called COUPS

