require 'all_files'

describe 'Order' do
  let (:order)  { Order.new               }
  let (:burger) { Dish.new(name='burger') }
  let (:fries)  { Dish.new(name='fries')  }
  let (:item_1) { LineItem.new(burger, 2) }
  let (:item_2) { LineItem.new(fries, 2)  }

  it 'should be created with no items' do
    expect(order.items).to eq []
  end

  it 'should be able to add an item' do
    expect(order.add(item_1)).to eq [item_1]
  end

  it 'should calculate the order total' do
    order.add(item_1)
    order.add(item_2)
    expect(order.total).to eq 20
  end
end