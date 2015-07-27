class PaymentMethod < ActiveRecord::Base
  belongs_to :fan
  has_many :transactions
end
