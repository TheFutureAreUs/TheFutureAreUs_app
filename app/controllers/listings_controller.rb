class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    @listing.save
    redirect_to root_path
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def mylistings
    @listings = Listing.where(user: current_user)
  end

  private

    def listing_params
      params.require(:listings).permit(:title, :description, :city, :state, :college, :zipcode)
    end

end