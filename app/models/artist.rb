class Artist < ActiveRecord::Base
  has_one :user, :as => :user_role, dependent: :destroy
  has_many :transactions
  has_many :albums
  accepts_nested_attributes_for :user
end
