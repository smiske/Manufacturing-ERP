class CreateBankTransactions < ActiveRecord::Migration
  def change
    create_table :bank_transactions do |t|
      t.string :transaction_type
      t.string :micor_code
      t.integer :bank_account_id

      t.timestamps
    end
  end
end
