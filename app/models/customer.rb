class Customer < ActiveRecord::Base

  has_many :users
  has_many :carts
  has_many :orders

end
