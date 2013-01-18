class Order < ActiveRecord::Base
  attr_accessible :cheque_id, :date, :product_id, :quantity

  validates :cheque_id, :presence => true
  validates :date, :presence => true
  validates :product_id, :presence => true
  validates :quantity, :presence => true
end
