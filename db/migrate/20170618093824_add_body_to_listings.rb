class AddBodyToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :body, :text
  end
end
