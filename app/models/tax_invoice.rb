class TaxInvoice < ActiveRecord::Base
  attr_accessible :rate, :po_date, :invoice_date, :invoice_number, :invoice_type, :labour_charges, :product_name, :excise, :ed_cess, :edu_cess, :value_added_tax, :total_payment, :PO_number, :quantity, :amount, :total_tax, :product_number, :return_quantity, :final_quantity, :company, :company_id, :paid_payment, :unpaid_payment, :rejected_quantity, :tds







  validates :PO_number, :presence => true

  validates :return_quantity, :presence => true

  validates :rejected_quantity, :presence => true

  validates :company_id, :presence => true

  validates :paid_payment, :presence => true


  has_one :product
  belongs_to :order

  belongs_to :company




end
