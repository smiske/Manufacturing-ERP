class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :PO_number
      t.date :date
      t.string :product_name
      t.integer :quantity
      t.float :rate
      t.float :tax
      t.string :product_number
      t.string :product_type

      t.timestamps
    end
  end
end
