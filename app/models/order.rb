class Order < ActiveRecord::Base
  attr_accessible  :PO_number, :date, :product_name, :po_quantity, :rate, :product_number, :product_type, :balance_quantity, :vender_code
  validates :PO_number, :presence => true
  validates :date, :presence => true
  validates :product_name, :presence => true
  validates :po_quantity, :presence => true
  validates :product_number, :presence => true


  belongs_to :product

  has_many :tax_invoice
end
