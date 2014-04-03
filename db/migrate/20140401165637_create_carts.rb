class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :customer_id
      t.integer :status
      t.integer :user_id
      t.string :descr
      t.string :comments

      t.timestamps
    end

    add_index :carts, [:customer_id,:user_id]
  end
end
