require 'twilio-ruby'
require_relative 'all_files'

class Takeaway
  def initialize(customer, order)
    @customer = customer
    @order = order
  end

  attr_reader :order, :customer

  def finalize
    puts "Your total is £#{order.total}. Do you agree? (y/n)"
    confirmation = gets.chomp
    if confirmation == "y"
      self.send_sms_to(customer)
    else
      puts "Your order was not placed. Please try again."
    end
  end

  def send_sms_to(customer)
    puts "Your order has been placed. A text has been sent to your mobile through the Twilio API."
    account_sid = 'AC96ac641078ed6b7c6a0b7ae9b445852d'
    auth_token = 'f37bbb6fca3cb34fcb669982388e800e'
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(:body => "Thank you for your order, #{customer.name}! Your Burgers & Fries order will be delivered before #{(Time.now + (60 * 60)).strftime('%H:%M')}",
    :to => customer.mobile,     # Replace with your phone number
    :from => "+441588242051")   # Replace with your Twilio number
    puts message.sid
  end
end