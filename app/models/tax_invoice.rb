class TaxInvoice < ActiveRecord::Base
  attr_accessible :amount, :due_date, :invoice_date, :invoice_number, :invoice_type, :labour_charges, :product_name, :total_payment, :PO_number, :quantity

  validates :amount, :presence => true
  validates :invoice_number, :presence => true
  validates :invoice_type, :presence => true
  validates :labour_charges, :presence => true
  validates :product_name, :presence => true
  validates :total_payment, :presence => true
  validates :PO_number, :presence => true
  validates :quantity, :presence => true


  has_one :product
  belongs_to :order

end
