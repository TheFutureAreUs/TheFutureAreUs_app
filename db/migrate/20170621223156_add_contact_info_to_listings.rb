class AddContactInfoToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :contact_info, :text
  end
end
