require 'line_item'
require 'dish'

describe 'Line Item' do
  it 'should be created with a dish' do
    dish = Dish.new
    line_item = LineItem.new(dish)
    expect(line_item).to eq [dish] 
  end
end