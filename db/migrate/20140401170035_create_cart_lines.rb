class CreateCartLines < ActiveRecord::Migration
  def change
    create_table :cart_lines do |t|
      t.integer :cart_id
      t.integer :status
      t.integer :item_id
      t.string :note
      t.integer :price_in_cents
      t.integer :qty

      t.timestamps
    end

    add_index :cart_lines,[:cart_id,:item_id]
  end
end
