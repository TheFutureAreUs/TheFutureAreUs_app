class Listing < ActiveRecord::Base
  belongs_to :category
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  # belongs_to :subcategory
  belongs_to :user
  validates :user_id, presence: true

  geocode_by :full_address
  after_validation :geocode

  def full_address 
    [city, state, zipcode].join(', ')
  end
  
end
