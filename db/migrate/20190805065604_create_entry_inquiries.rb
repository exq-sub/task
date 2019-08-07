class CreateEntryInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :entry_inquiries do |t|
      t.string :name
      t.string :request

      t.timestamps
    end
  end
end
