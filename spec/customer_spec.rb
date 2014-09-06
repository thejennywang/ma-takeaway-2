require 'all_files'

describe 'Customer' do
    let (:jenny) { Customer.new(name='Jenny', mobile='+447940364695') }

  it 'should have a name' do
    expect(jenny.name).to eq 'Jenny'
  end

  it 'should have a mobile number' do
    expect(jenny.mobile).to eq '+447940364695'
  end
end