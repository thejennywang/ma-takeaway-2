require 'all_files'

describe 'Dish' do
  it 'should be created with a price' do
    dish = Dish.new
    expect(dish.price).to eq 5
  end

  it 'should be created with a name' do
    dish = Dish.new(name='a name')
    expect(dish.name).to eq 'a name'
  end

  it 'should be able to have a different name' do
    dish = Dish.new(name='new name')
    expect(dish.name).to eq 'new name'
  end

  it 'should be able to have a different price' do
    dish = Dish.new(price=10)
    expect(dish.name).to eq 10
  end
end