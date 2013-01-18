class TaxInvoice < ActiveRecord::Base
  attr_accessible :amount, :due_date, :invoice_date, :invoice_number, :invoice_type, :labour_charges, :product_name, :total_requirement
end
