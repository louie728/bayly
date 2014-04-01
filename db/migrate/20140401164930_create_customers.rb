class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :cusnumber, :index
      t.string :address
      t.string :address1
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :email
      t.integer :repid

      t.timestamps
    end
  end
end
