class Fan < ActiveRecord::Base
  has_one :user, as: :user_role
  has_many :payment_methods
  has_many :transactions

  # TODO
  # Add subclasses for Credit Card, PayPal, Amazon, etc
end
