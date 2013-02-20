class ProductTransaction < ActiveRecord::Base
  attr_accessible :delivary_challan, :delivary_type, :tax, :tax_invoice_id, :transaction_id

  validates :delivary_challan, :presence => true
  validates :delivary_type, :presence => true
  validates :tax, :presence => true
  validates :tax_invoice_id, :presence => true
  validates :transaction_id, :presence => true


end
