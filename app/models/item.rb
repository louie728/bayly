class Item < Product
  belongs_to :cart_line
  belongs_to :order_line

end