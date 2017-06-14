class Listing < ActiveRecord::Base
  belongs_to :category
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  # belongs_to :subcategory
end
