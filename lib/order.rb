class Order
  def initialize
    @items = []
  end

  attr_accessor :items

  def add(item)
    @items << item
  end

  def total
    @items.inject(0) do |accumulator, item|
      accumulator + item.total
    end
  end
end