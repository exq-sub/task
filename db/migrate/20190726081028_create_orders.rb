class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      
      t.integer :user_id
      t.integer :item_id
      t.string :add_money
      t.string :price_sum

      t.timestamps
    end
  end
end
