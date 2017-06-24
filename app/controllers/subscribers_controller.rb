class SubscribersController < ApplicationController

  before_filter :authenticate_user!

  def new
  end

  def create
    raise "Please, check registration errors" unless @registration.valid?
      current_user.subscribed = true
      current_user.stripeid = customer.id
      current_user.process_payment
      current_user.save
      redirect_to root_path, notice: 'Registration was successfully created.'

    rescue e
      flash[:error] = e.message
      render :new
  end

  private

    def stripe_params
      params.permit :stripeEmail, :stripeToken
    end

end

