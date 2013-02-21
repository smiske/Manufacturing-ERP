class CreateBankTransactions < ActiveRecord::Migration
  def change
    create_table :bank_transactions do |t|
      t.string :transaction_type
      t.string :micor_code
      t.integer :bank_account_id
      t.string :trans_type
      t.float :amount
      t.integer :PO_number
      t.integer :invoice_number

      t.timestamps
    end
  end
end
