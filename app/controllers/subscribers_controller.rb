class SubscribersController < ApplicationController

  before_filter :authenticate_user!

  def new
  end

  def update

    token = params[:stripeToken]

    customer = Stripe::Customer.create(
      card: token,
      plan: 2002,
      email: current_user.email
    )

    current_user.subscribed = true
    current_user.stripeid = customer.id
    current_user.save
    
    redirect_to root_path, notice: "Your subscription was set up successfully! Happy learning!"

  end

  private

    def stripe_params
      params.permit :stripeEmail, :stripeToken
    end

end

