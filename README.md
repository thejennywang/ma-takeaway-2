#How to run:

$ irb


require './lib/takeaway'


order = Order.new

burger = Dish.new(name="burger", price=5)

fries = Dish.new(name="fries",price=3)

item_1 = LineItem.new(burger, 2)

item_2 = LineItem.new(fries, 2)

order.add(item_1)

order.add(item_2)



jenny = Customer.new(name="Jenny", mobile='+447940364695')



takeaway = Takeaway.new(jenny, order)

takeaway.finalize
