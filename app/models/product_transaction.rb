class ProductTransaction < ActiveRecord::Base
  attr_accessible :delivary_challan, :delivary_type, :tax, :tax_invoice_id, :transaction_id
end
