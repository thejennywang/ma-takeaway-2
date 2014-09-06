class Menu
  def initialize
    @dishes = []
  end

  attr_reader :dishes

  def add_dish(dish)
    @dishes << dish
  end

  def display
    @dishes.each do |dish|
      puts "#{dish.name.capitalize}: £#{sprintf('%.2f',dish.price)}"
    end
  end
end