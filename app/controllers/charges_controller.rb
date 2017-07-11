class ChargesController < ApplicationController
  before_action :amount_to_be_charged
  before_action :description

  def new
  end

  def create
 
    customer = StripeTool.create_customer(email: params[:stripeEmail],
                                          stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id,
                                      amount: @monthly_amount,
                                      amount: @yearly_amount,
                                      description: @monthly_description,
                                      description: @yearly_description)

    
    redirect_to thanks_path

  rescue Stripe::CardError => e 
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def thanks
  end

  private

    def amount_to_be_charged
      @monthly_amount= 999
      @yearly_amount = 8999
    end

    def description
      @monthly_description = "Monthly Subscription"
      @yearly_description = "Yearly Subscription"
    end

end
