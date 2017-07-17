class ChargesController < ApplicationController
  before_action :amount_to_be_charged
  before_action :set_plan
  before_action :description

  def new
    @user = User.new
  end

  def create
    if params[:subscription].include? 'yes'
      StripeTool.create_membership(email: params[:stripeEmail],
                                   stripe_token: params[:stripeToken],
                                   plan: @plan
                                   )
    else
      customer = StripeTool.create_customer(email: params[:stripeEmail], stripe_token: params[:stripeToken])


      charge = StripeTool.create_charge(customer_id: customer.id, amount: @amount, description: @description)
    end 

    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Successfully registered"
      # sign user in
      redirect_to thanks_path
    else
      flash[:error] = "Cannot create a user, try again"
      redirect_to root_path
    end 

  rescue Stripe::CardError => e 
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def thanks
  end

  private

    def set_plan
      @plan = 2002
    end

    def amount_to_be_charged
      @amount= 999
    end

    def description
      @description = "Monthly Subscription"
    end

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
