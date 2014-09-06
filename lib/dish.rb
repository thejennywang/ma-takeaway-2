class Dish
  def initialize(name='dishywishy',price=5)
    @price = price
    @name = name
  end

  attr_reader :price, :name
end