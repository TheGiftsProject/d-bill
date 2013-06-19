class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.integer :amount_cents
      t.integer :tip_amount_cents
      t.string :name
      t.string :udid
      t.references :bill, index: true

      t.timestamps
    end
  end
end
