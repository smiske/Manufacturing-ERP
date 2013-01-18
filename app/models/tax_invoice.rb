class TaxInvoice < ActiveRecord::Base
  attr_accessible :amount, :due_date, :invoice_date, :invoice_number, :invoice_type, :labour_charges, :product_name, :total_requirement

  validates :amount, :presence => true
  validates :invoice_number, :presence => true
  validates :invoice_type, :presence => true
  validates :labour_charges, :presence => true
  validates :product_name, :presence => true
  validates :total_requirement, :presence => true
end
