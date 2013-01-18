class CreateRefunds < ActiveRecord::Migration
  def change
    create_table :refunds do |t|
      t.integer :transaction_id
      t.integer :product_transaction_id
      t.integer :quantity

      t.timestamps
    end
  end
end
