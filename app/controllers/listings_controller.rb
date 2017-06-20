class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to @listing
    else 
      flash[:alert] = @listing.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def edit
    @listing = Listing.find(params[:id])
    @category = @listing.category
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    redirect_to @listing
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to root_path
  end

  def mylistings
    @listings = Listing.where(user: current_user)
  end

  def search
    @listing = Listing.search(params)
  end

  def mylistings
  end

  private

    def listing_params
      params.require(:listing).permit(:title, :description, :city, :state, :college, :zipcode, :category_id, :body, :tag_list)
    end

end
