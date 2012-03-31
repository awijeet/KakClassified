class CreateRecommends < ActiveRecord::Migration
  def change
    create_table :recommends do |t|
      t.references :user
      t.references :ad
      t.integer :recommend_value
      t.timestamps
    end
    add_index :recommends, :user_id
  end
end
