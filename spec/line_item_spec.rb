require 'line_item'
require 'dish'

describe 'Line Item' do
    let (:dish) { Dish.new(price=5) }

  it 'should be created with a dish' do
    line_item = LineItem.new(dish)
    expect(line_item.dish).to eq dish
  end

  it 'should be created with a quanity of a dish' do
    line_item = LineItem.new(dish, 2)
    expect(line_item.quantity).to eq 2
  end

  it "should have a line's total price" do
    line_item = LineItem.new(dish, 2)
    expect(line_item.total).to eq 10
  end
end