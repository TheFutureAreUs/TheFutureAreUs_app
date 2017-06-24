class Subcriber < ActiveRecord::Base
  
  def process_payment
    customer = Stripe::Customer.create email: email,
                                       card: token,
                                       plan: 2030,
                                       email: current_user.email

    Stripe::Charge.create customer: customer.id,
                          amount: 999,
                          currency: 'usd'
  end

end