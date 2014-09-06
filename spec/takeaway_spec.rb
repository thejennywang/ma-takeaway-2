require 'takeaway'

describe 'Takeaway' do
    let (:order)    { double Order    }
    let (:customer) { double Customer }

  it 'can finalize an order by having the customer confirm their total' do
    allow(self).to receive(:finalize)
    confirmation = 'y'
    self.finalize
  end

  it 'sends an SMS when an order is finalized' do
    allow(self).to receive(:send_sms_to).with(customer)
    self.send_sms_to(customer)
  end
  
end