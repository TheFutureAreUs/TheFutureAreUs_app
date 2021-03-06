class Listing < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  belongs_to :college, optional: true
  belongs_to :speccollege, optional: true
  # belongs_to :subcategory
  validates_presence_of :user_id
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :body
  # validates_presence_of :city
  # validates_presence_of :state
  validates_presence_of :tag_list
  # validates_presence_of :zipcode
  # validates_presence_of :street
  validates_presence_of :contact_info
  validates_presence_of :address



  acts_as_taggable # Alias for acts_as_taggable_on :tags

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


  # def address 
    # [city, state, zipcode, street].join(', ')
  # end

  def self.search(params)
    listings = Listing.where(category_id: params[:category].to_i)
    listings = listings.where("title like ? or description like ?", params             [:search], params[:search]) if params[:search].present?
    listings = listings.near(params[:location], 20) if params[:location] .present?
    listings
  end
  
end
