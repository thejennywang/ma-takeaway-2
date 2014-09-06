class LineItem
  def initialize(dish, quantity=1)
   @dish, @quantity = dish, quantity
  end

  attr_reader :dish, :quantity

  def total
    @dish.price * quantity
  end
end