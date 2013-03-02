class Order < ActiveRecord::Base
  attr_accessible  :PO_number, :date, :product_name, :quantity, :rate, :product_number
  validates :PO_number, :presence => true
  validates :date, :presence => true
  validates :product_name, :presence => true
  validates :quantity, :presence => true

  belongs_to :product

  has_one :tax_invoice
end
