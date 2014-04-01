class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id,:index
      t.integer :status
      t.integer :user_id
      t.string :descr
      t.string :comments

      t.timestamps
    end
  end
end