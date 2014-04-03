class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :status
      t.integer :item_id
      t.string :note
      t.integer :price_in_cents
      t.integer :qty

      t.timestamps
    end
    add_index :order_lines,[:order_id,:status,:item_id]
  end

end
