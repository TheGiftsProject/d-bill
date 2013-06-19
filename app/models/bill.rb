class Bill < ActiveRecord::Base
  has_many :claims
end
