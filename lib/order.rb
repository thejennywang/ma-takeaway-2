class Order
  def initialize
    @items =[]
  end

  attr_accessor :items

  def add(line_item)
    @items << line_item
  end
end