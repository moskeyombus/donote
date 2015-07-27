class Artist < ActiveRecord::Base
  has_one :user, :as => :user_role
  has_many :transactions
  has_many :albums
end
