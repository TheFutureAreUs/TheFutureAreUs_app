class AddSpeccollegeIdToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :speccollege_id, :integer
  end
end
