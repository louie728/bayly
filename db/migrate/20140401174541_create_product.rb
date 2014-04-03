class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :item_no
      t.string :desc
      t.string :add_desc
      t.string :type
      t.integer :price_in_cents
    end

    add_index :products, [:item_no,:type]
  end

end
