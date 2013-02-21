class Order < ActiveRecord::Base
  attr_accessible  :PO_number, :date, :product_name, :quantity, :rate, :tax

  validates :PO_number, :presence => true
  validates :date, :presence => true
  validates :product_name, :presence => true
  validates :quantity, :presence => true

  belongs_to :product

  has_many :tax_invoices
end
