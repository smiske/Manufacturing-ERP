class BankTransaction < ActiveRecord::Base
  attr_accessible :bank_account_id, :micor_code, :type

  validates :bank_account_id, :presence => true
  validates :micor_code, :presence => true
  validates :type, :presence => true

  belongs_to :bank_account

  has_one :transaction
end
