class AddStreetToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :street, :string
  end
end
