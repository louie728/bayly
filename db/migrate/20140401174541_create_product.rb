class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :item_no,:index
      t.string :desc
      t.string :add_desc
      t.string :type,:index
      t.integer :price_in_cents
    end
  end
end
