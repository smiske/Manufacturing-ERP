class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :bank_transaction_id
      t.float :total
      t.float :total_refund
      t.integer :product_transaction_id

      t.timestamps
    end
  end
end
