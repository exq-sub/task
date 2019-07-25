class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      
      t.integer :user_id
      t.string :image
      t.string :product_name
      t.string :product_price
      t.string :info
      t.string :description
      
      t.timestamps
    end
  end
end
