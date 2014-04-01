class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :customer_id,:index
      t.integer :cusnumber,:index
      t.integer :status
      t.integer :user_id,:index
      t.string :descr
      t.string :comments

      t.timestamps
    end
  end
end
