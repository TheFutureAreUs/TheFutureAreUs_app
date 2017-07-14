class CollegesController < ApplicationController

  def index
    @colleges = College.all
    @maryland_colleges = @colleges[0]
  end

  def show
    @listings = Listing.where(category_id: params[:id]).order("created_at DESC")
    @category = Category.find(params[:id])
  end
  
end
