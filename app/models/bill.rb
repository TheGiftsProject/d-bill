class Bill < ActiveRecord::Base
  has_many :claims

  mount_uploader :receipt, ReceiptUploader


  before_create :generate_defaults

  def to_param
    code
  end

  def total=(val)
    self.total_cents = val.to_f * 100
  end

  def total
    total_cents / 100
  end

  private

  def generate_defaults
    generate_code
  end

  def generate_code
    random = rand(10000).to_s
    if Bill.exists?(:code => random)
      generate_code
    else
      self.code = random
    end
  end
end
