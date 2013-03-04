class BankAccount < ActiveRecord::Base
  attr_accessible :account_number, :balance, :bank_name, :branch_add, :ifsc_code

  validates :account_number, :presence => true

  validates :bank_name, :presence => true
  validates :branch_add, :presence => true


  validates :ifsc_code, :presence => true
  validates :balance, :presence => true

  belongs_to :user
  has_many :bank_transactions




end
