module SecondStripeTool

  def self.create_membership(email: email, stripe_token: stripe_token, year_plan: year_plan)
   Stripe::Customer.create(
     email: email,
     source: stripe_token,
     year_plan: year_plan
   )
  end


  def self.create_customer(email: email, stripe_token: stripe_token)
    Stripe::Customer.create(
      source: stripe_token,
      email: email
    )
  end




  def self.create_charge(customer_id: customer_id, yearly_amount: yearly_amount, year_desc: year_desc)
    Stripe::Charge.create(
      customer: customer_id,
      currency: 'usd',
      yearly_amount: yearly_amount,
      year_desc: year_desc
    )
  end

end