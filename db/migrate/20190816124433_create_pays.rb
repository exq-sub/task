class CreatePays < ActiveRecord::Migration[5.2]
  def change
    create_table :pays do |t|
      
      t.string :pay_type

      t.timestamps
    end
  end
end
