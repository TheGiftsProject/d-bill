class AddDefaultsToClaim < ActiveRecord::Migration
  def change
    change_column :claims, :amount_cents, :integer, :default => 0
    change_column :claims, :tip_amount_cents, :integer, :default => 0
  end
end
