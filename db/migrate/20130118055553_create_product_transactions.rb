class CreateProductTransactions < ActiveRecord::Migration
  def change
    create_table :product_transactions do |t|
      t.string :delivary_type
      t.integer :delivary_challan
      t.integer :tax_invoice_id
      t.float :tax
      t.integer :transaction_id

      t.timestamps
    end
  end
end
