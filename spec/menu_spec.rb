require 'all_files'

describe 'Menu' do
  let (:menu)   { Menu.new                         }
  let (:burger) { Dish.new(name='burger', price=5) }

  it 'does not contain any dishes at first' do
    expect(menu.dishes).to eq []
  end

  it 'should be able to have a dish added to it' do
    menu.add_dish(burger)
    expect(menu.dishes).to eq [burger]
  end

  it 'should be able to be displayed' do
    menu.add_dish(burger)
    allow(STDOUT).to receive(:puts)
    expect(STDOUT).to receive(:puts).with("Burger: £5.00")
    menu.display
  end

end