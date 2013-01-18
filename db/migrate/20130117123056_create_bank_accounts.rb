class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :bank_name
      t.string :account_number
      t.string :branch_add
      t.string :ifsc_code
      t.integer :contact_number
      t.integer :branch_manager_contact_no
      t.float :balance

      t.timestamps
    end
  end
end
