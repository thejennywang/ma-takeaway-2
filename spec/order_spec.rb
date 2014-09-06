require 'all_files'

describe 'Order' do
  let (:order) { Order.new }

  it 'should be created with no items' do
    expect(order.items).to eq []
  end

  it 'should be able to add an item' do
    line_item = LineItem.new("burger", 2)
    expect(order.add(line_item)).to eq [line_item]
  end
end