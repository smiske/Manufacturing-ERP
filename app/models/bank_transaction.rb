class BankTransaction < ActiveRecord::Base
  attr_accessible :bank_account_id, :micor_code, :transaction_type, :trans_type, :amount, :PO_number, :invoice_number

  validates :bank_account_id, :presence => true

  validates :transaction_type, :presence => true

  validates :trans_type, :presence => true

  validates :amount, :presence => true

  belongs_to :bank_account
  
  has_many :tax_invoices


end
