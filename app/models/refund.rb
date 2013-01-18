class Refund < ActiveRecord::Base
  attr_accessible :product_transaction_id, :quantity, :transaction_id

  validates :product_transaction_id, :presence => true
  validates :quantity, :presence => true
  validates :transaction_id, :presence => true
end
