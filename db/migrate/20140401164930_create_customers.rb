class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :cusnumber
      t.string :address
      t.string :address1
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.timestamps
    end

    add_index :customers, [:cusnumber]
  end
end
