#How to run:

require './lib/all_files'
order = Order.new
burger = Dish.new(name="burger", price=5)
fries = Dish.new(name="fries",price=3)
item_1 = LineItem.new(burger, 2)
item_2 = LineItem.new(fries, 2)

order.add(item_1)
order.add(item_2)