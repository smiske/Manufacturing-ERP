class Order < ActiveRecord::Base
  attr_accessible  :PO_number, :date, :product_name, :quantity, :rate, :product_number, :product_type
  validates :PO_number, :presence => true
  validates :date, :presence => true
  validates :product_name, :presence => true
  validates :quantity, :presence => true
  validates :product_number, :presence => true


  belongs_to :product

  has_one :tax_invoice
end
