class CreateSpeccolleges < ActiveRecord::Migration[5.0]
  def change
    create_table :speccolleges do |t|
      t.string :name
      t.integer "category_id"
      t.integer "college_id"
    end
  end
end
