class RenameRequestColumnToEntryInquiries < ActiveRecord::Migration[5.2]
  def change
    rename_column :entry_inquiries, :request, :message
  end
end
