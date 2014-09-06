class Dish
  def initialize(name='dishywishy',price=5)
    @price = price
    @name = name
  end

  attr_accessor :price, :name
end