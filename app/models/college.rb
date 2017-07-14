class College < ApplicationRecord
  has_many :speccolleges
  has_many :listings
end
