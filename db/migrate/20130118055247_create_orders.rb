class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date
      t.string :product_name
      t.integer :quantity


      t.timestamps
    end
  end
end
