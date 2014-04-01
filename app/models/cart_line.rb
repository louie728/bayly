class CartLine < ActiveRecord::Base
  belongs_to :cart
  has_many :items

end
