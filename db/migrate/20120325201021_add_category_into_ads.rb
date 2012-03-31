class AddCategoryIntoAds < ActiveRecord::Migration
  def up
   add_column :ads, :category_id, :integer  
  end

  def down
   remove_column :ads, :category_id
  end
end
