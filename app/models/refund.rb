class Refund < ActiveRecord::Base
  attr_accessible :product_transaction_id, :quantity, :transaction_id
end
