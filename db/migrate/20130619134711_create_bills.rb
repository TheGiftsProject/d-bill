class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :photo_url
      t.string :code
      t.datetime :deleted_at
      t.integer :total_cents

      t.timestamps
    end
  end
end
