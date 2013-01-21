class BankTransaction < ActiveRecord::Base
  attr_accessible :bank_account_id, :micor_code, :transaction_type

  validates :bank_account_id, :presence => true
  validates :micor_code, :presence => true
  validates :transaction_type, :presence => true

  belongs_to :bank_account

  has_one :transaction
end
