class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :status
      t.integer :user_id
      t.string :descr
      t.string :comments
      t.string :po

      t.timestamps
    end

    add_index :orders, [:customer_id,:user_id,:po]
  end
end
