class Item < Product
  has_many :cart_line
  has_many :order_line, foreign_key: :item_id

end