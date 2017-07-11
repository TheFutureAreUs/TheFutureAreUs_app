class AddCollegeIdToListing < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :college_id, :integer
  end
end
