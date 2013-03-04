class TaxInvoice < ActiveRecord::Base
  attr_accessible :rate, :po_date, :invoice_date, :invoice_number, :invoice_type, :labour_charges, :product_name, :excise, :ed_cess, :edu_cess, :value_added_tax, :total_payment, :PO_number, :quantity, :amount, :total_tax, :product_number, :return_quantity, :final_quantity



  validates :invoice_type, :presence => true



  validates :PO_number, :presence => true

  validates :return_quantity, :presence => true


  has_one :product
  belongs_to :order




end
