class BankAccount < ActiveRecord::Base
  attr_accessible :account_number, :balance, :bank_name, :branch_add, :branch_manager_contact_no, :contact_number, :ifsc_code

  validates :account_number, :presence => true
  validates :balance, :presence => true
  validates :bank_name, :presence => true
  validates :branch_add, :presence => true
  validates :branch_manager_contact_no, :presence => true
  validates :contact_number, :presence => true
  validates :ifsc_code, :presence => true


  belongs_to :user
  has_many :bank_transactions


end
