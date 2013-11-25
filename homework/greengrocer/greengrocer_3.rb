
class Shopping

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

attr_reader :cart, :coups, :total_cart

def initialize
	@cart = []
	@coups = []
	@total_cart = (ITEMS.sample(20))
end

#randomly generates a cart of items
def generateCart
	rand(20).times do
	cart.push(ITEMS.sample) 
	end
	cart
end



#randomly generates set of coupons
def generateCoups

	rand(2).times do
		coups.push(COUPS.sample)
	end
	# coups
end

#puts everything in the cart
# def squish
# 	checkout_line = cart.concat(coups)
# end

# figures out the total number of items, squishes down the dupes into multiples(from class notes)
def total
		counts = {}
			total_cart.each do |item|
				item.each do |name, attributes|
					counts[name] = total_cart.select{|other_item| other_item == item}.size
				end
			end
			counts
		end
end

vegan_paradise = Shopping.new
puts vegan_paradise.total
