class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :name
      t.integer :price
      t.string :promotion_url
      t.text :description
      t.references :subcategory

      t.timestamps
    end
    add_index :ads, :subcategory_id
  end
end
