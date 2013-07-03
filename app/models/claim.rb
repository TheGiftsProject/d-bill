class Claim < ActiveRecord::Base
  belongs_to :bill

  def amount=(value)
    self.amount_cents = (value.to_f * 100).to_i
  end

  def tip_amount=(value)
    self.tip_amount_cents = (value.to_f * 100).to_i
  end

  def amount
    amount_cents / 100.0
  end

  def tip_amount
    tip_amount_cents / 100.0
  end
end
