class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date
      t.integer :product_id
      t.integer :quantity
      t.integer :cheque_id

      t.timestamps
    end
  end
end
