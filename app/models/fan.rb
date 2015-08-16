class Fan < ActiveRecord::Base
  has_one :user, as: :user_role, dependent: :destroy
  has_many :payment_methods
  has_many :transactions
  accepts_nested_attributes_for :user

  # TODO
  # Add subclasses for Credit Card, PayPal, Amazon, etc
end
