class AddTargetAmountToItems < ActiveRecord::Migration[5.2]
  def change
    
    add_column :items, :target_amount, :string
    add_column :items, :price_sum, :string
    
  end
end
