class CategoriesController < ApplicationController

  def index
  end

  def show
    @listings = Listing.where(category_id: params[:id]).order("created_at DESC")
    @category = Category.find(params[:id])
  end

end
