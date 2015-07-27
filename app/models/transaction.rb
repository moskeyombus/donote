class Transaction < ActiveRecord::Base
  belongs_to :fan
  belongs_to :artist
  belongs_to :payment_method
end
