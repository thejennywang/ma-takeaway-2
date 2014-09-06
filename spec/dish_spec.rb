require 'dish'

describe 'Dish' do
  it 'should be created with a price' do
    dish = Dish.new
    expect(dish.price).to eq 5
  end

  it 'should be created with a name' do
    dish = Dish.new
    expect(dish.name).to eq 'dishywishy'
  end
end