class ListingsController < ApplicationController
  # user has to be logged in to post listings
  before_filter :authenticate_user!, only: [:new, :create]
  # makes sure random people won't be able to edit, delete, or update listings
  before_filter :is_user?, only: [:edit, :update, :delete]

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
    #@listing = Listing.search(params)
    @location = params[:search]
    @distance = prams[:miles]
    @listings = Listing.near(@location, @distance)

    if @location.empty?
      gflash notice: "You can't search without a search term; please enter a location and retry!"
      redirect_to "/"
    else 
      if @listings.length < 1
        gflash notice: "Sorry! We couldn't find any farms within #{@distnace} miles of #{@location}."
        redirect_to "/"
      else
        search_maps(@listings)
      end 
    end 
  end  

  private

    def listing_params
      params.require(:listing).permit(:title, :description, :city, :state, :college, :zipcode, :category_id, :body, :tag_list, :contact_info)
    end

    def is_user?
      @listing = Listing.find(params[:id])
      unless current_user = @listing.user 
        redirect_to root_path, alert: "Sorry, you are not the user of this listing."
      end
    end

    def search_map(listings)
      @listings = listings
      @hash = Gmaps4rails.build_markers(@farms) do |listing, marker|
        marker.lat listing.latitude
        marker.lng listing.longitude
        marker.infowindow "<a href='/farms/"+"#{listing.id}"+"'>#{listing.name}, #{listing.address}</a>"
        marker.json({ title: listing.name, id: listing.id })
      end
	  end

end
