class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :bank_name
      t.string :account_number
      t.string :branch_add
      t.integer :ifsc_code
      t.integer :contact_number
      t.integer :branch_manager_contact_no
      t.integer :balance

      t.timestamps
    end
  end
end
