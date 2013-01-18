class Order < ActiveRecord::Base
  attr_accessible :cheque_id, :date, :product_id, :quantity
end
