class CreateCartLines < ActiveRecord::Migration
  def change
    create_table :cart_lines do |t|
      t.integer :cart_id,:index
      t.integer :status
      t.integer :item_id,:index
      t.string :note
      t.integer :price_in_cents
      t.integer :qty

      t.timestamps
    end
  end
end
