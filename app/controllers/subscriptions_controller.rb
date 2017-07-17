class SubscriptionsController < ApplicationController
   before_action :set_year_plan
   before_action :yearly_desc
   before_action :year_amount_to_be_charged

  def new
    @user = User.new
  end

  def create

    if params[:subscription].include? 'yes'
      SecondStripeTool.create_membership(email: params[:stripeEmail],
                                  stripe_token: params[:stripeToken],
                                  year_plan: @year_plan
                                  )
    else
      customer = SecondStripeTool.create_customer(email: params[:stripeEmail],                                                      stripe_token: params[:stripeToken]
                                                  )


      charge = SecondStripeTool.create_charge(customer_id: customer.id, 
                                              yearly_amount: @yearly_amount,
                                              year_desc: @year_desc
                                              )
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

  private

    def set_year_plan
      @year_plan = 1001
    end

    def year_amount_to_be_charged
      @yearly_amount = 8999
    end

    def yearly_desc
      @year_desc = "Yearly Subscripition"
    end

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end