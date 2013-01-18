class Transaction < ActiveRecord::Base
  attr_accessible :bank_transaction_id, :product_transaction_id, :total, :total_refund
end
