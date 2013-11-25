require 'debugger'
ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance_items => true}},
    {"KALE" => {:price => 3.00,:clearance_items => false}},
    {"BLACK_BEANS" => {:price => 2.50,:clearance_items => false}},
    {"ALMONDS" => {:price => 9.00, :clearance_items => false}},
    {"TEMPEH" => {:price => 3.00,:clearance_items => true}},
    {"CHEESE" => {:price => 6.50,:clearance_items => false}},
    {"BEER" => {:price => 13.00, :clearance_items => false}},
    {"PEANUTBUTTER" => {:price => 3.00,:clearance_items => true}},
    {"BEETS" => {:price => 2.50,:clearance_items => false}}]

COUPS = [  {:item=>"AVOCADO", :num=>2, :cost=>5.00},
    {:item=>"BEER", :num=>2, :cost=>20.00},
    {:item=>"CHEESE", :num=>3, :cost=>15.00}]

#randomly generates a cart of items
def generate_cart
  cart = []
  rand(1..20).times do
    cart.push(ITEMS.sample)  
  end
  cart
end

#randomly generates set of coupons
def generate_coupons
  coups = []
  rand(2).times do
    coups.push(COUPS.sample)
  end
  update_coupons_for_triple_discount(coups) if coups.size == 2
  coups
end

#update coupons for triple discount
def update_coupons_for_triple_discount(coupons)
  if coupons[0] = coupons[1]
    coupons.delete_at(1)

    coupon = coupons[0]

    ITEMS.each do |items|
      items.each do |name, attributes|
        if coupon[:item] == name
          real_price = attributes[:price] * coupon[:num]
          new_price = coupon[:cost]
          percentage_discount = (real_price - new_price)/real_price
          coupon[:cost] = coupon[:cost] * (1 - (percentage_discount * 3))
        end
      end
    end
  end
  coupons
end

#returns count of items in cart
def count_cart_items(cart)
  counts = {}
  cart.each do |item|
    #an item is like {"AVOCADO" => {:price => 3.00, :clearance_items => true}}
    item.each do |name, attributes|
    # a name is like "AVOCADO", a value is like 
      counts[name] = cart.select{|other_item| other_item == item}.size
    end
  end
  counts
end

#adds count to the items in the cart
def update_cart_counts(cart, counts)
  cart.uniq!
  cart.each do |item|
    item.each do |name, attributes|
      # count {"AVOCADO"=>1, "TEMPEH"=>1, "BEER"=>2, "BEETS"=>1, "BLACK_BEANS"=>1, "CHEESE"=>1}
      
      # counts.each do |item2, number|
        # {:price=>3.0, :clearance_items=>true, :count => 1}
      attributes[:count] = counts[name]
      # end
    end
  end
end

def simple_cost(hash)
  hash[:price] * hash[:count]
end

#changes price for couponed items
# use the coupon price if the person has the correct number of items
def coupon_items(cart, coupons)
  return 0 if coupons.nil?
  cost = 0
  cart.each do |item|
    item.each do |name, attributes|
      # {"TEMPEH"=>{:price=>3.0, :clearance_items=>true, :count=>1}}
      coupons.each do |coupon|
        # apply each coupon, remove total items from cart, add to the cost
        if name == coupon[:item] && attributes[:count] >= coupon[:num]
          cost += coupon[:cost]
          attributes[:count] = attributes[:count] - coupon[:num]
        end
      end
    end
  end
  cost
end

#gives clearance_items discount
def clearance_items(cart, cost)
  cart.each do |item|
    item.each do |name, attribute|
      if attribute[:clearance]
        # we could do 
        # cost += clearance_cost(attribute)
        cost += simple_cost(attribute) * 0.8
        attribute[:count] = 0
      end
    end
  end
  cost
end

# def clearance_cost(attribute)
#   simple_cost(attribute) * 0.8
# end

#gives cost of normal items
def full_price_items(cart, cost)
  cart.each do |item|
    item.each do |name,attribute|
      cost += simple_cost(attribute)
    end
  end
  cost
end

#gives over 5 discount
def over_5_discount(cart, cost)
  over_5 = false

  cart.each do |item|
    item.each do |name, attribute| 
      over_5 = true if attribute[:price] > 5
    end
  end

  over_5 || cost <= 10 ? cost : cost - 10
end

def checkout(cart, coupons)

  no_coupons = coupon_items(cart, coupons)
  clearance_items = clearance_items(cart, no_coupons)
  total = full_price_items(cart, clearance_items)
  over_5_discount(cart, total)
end

def prepare_cart
  cart = generate_cart
  count = count_cart_items(cart)
  # count looks like {"AVOCADO"=>1, "TEMPEH"=>1, "BEER"=>2, "BEETS"=>1, "BLACK_BEANS"=>1, "CHEESE"=>1}
  cart = update_cart_counts(cart, count)
  return cart
end
# cart looks like this now
# [{"TEMPEH"=>{:price=>3.0, :clearance_items=>true, :count=>1}},
#  {"PEANUTBUTTER"=>{:price=>3.0, :clearance_items=>true, :count=>1}},
#  {"BEER"=>{:price=>13.0, :clearance_items=>false, :count=>1}},
#  {"ALMONDS"=>{:price=>9.0, :clearance_items=>false, :count=>1}},
#  {"BEETS"=>{:price=>2.5, :clearance_items=>false, :count=>3}},
# {"BLACK_BEANS"=>{:price=>2.5, :clearance_items=>false, :count=>1}}]
def checkout(cart)
  cost = coupon_items(cart, generate_coupons)
  cost = clearance_items(cart, cost)
  cost = full_price_items(cart, cost)
  cost = over_5_discount(cart, cost)
  return cost
end

cart = prepare_cart
puts checkout(cart)
