class SubscribersController < ApplicationController

  before_filter :authenticate_user!

  def new
  end

  def create

    token = params[:stripeToken]

    customer = Stripe::Customer.create(
      card: token,
      plan: 2030,
      email: current_user.email
    )

    current_user.subscribed = true
    current_user.stripeid = customer.id
    current_user.save
    
  end

  private

    def stripe_params
      params.permit :stripeEmail, :stripeToken
    end

end

