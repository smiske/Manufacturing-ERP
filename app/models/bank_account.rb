class BankAccount < ActiveRecord::Base
  attr_accessible :account_number, :balance, :bank_name, :branch_add, :branch_manager_contact_no, :contact_number, :ifsc_code
end
