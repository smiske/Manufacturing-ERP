class Transaction < ActiveRecord::Base
  attr_accessible :bank_transaction_id, :product_transaction_id, :total, :total_refund

  validates :bank_transaction_id, :presence => true
  validates :product_transaction_id, :presence => true
  validates :total, :presence => true
  validates :total_refund, :presence => true

  belongs_to :bank_transaction
  belongs_to :product_transaction

  has_one :refund
end
