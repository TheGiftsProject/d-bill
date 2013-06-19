class RenameImageUrlToReceiptInBill < ActiveRecord::Migration
  def change
    rename_column :bills, :photo_url, :receipt
  end
end
