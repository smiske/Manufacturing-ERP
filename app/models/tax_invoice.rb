class TaxInvoice < ActiveRecord::Base
  attr_accessible :rate, :due_date, :invoice_date, :invoice_number, :invoice_type, :labour_charges, :product_name, :excise, :ed_cess, :edu_cess, :value_added_tax, :total_payment, :PO_number, :quantity, :amount, :vat,  :payment



  validates :invoice_type, :presence => true



  validates :PO_number, :presence => true
  validates :quantity, :presence => true



  has_one :product
  belongs_to :order


  def amount
    if self.rate && self.quantity
      self.amount =  ((self.rate * self.quantity) + self.labour_charges)
    else
      self.amount = "0.0"
    end
  end

  def vat
    if self.amount && self.tax
        self.vat = (self.amount * self.tax)
    else
      self.vat = "0.0"
    end
  end

  def total_payment
    if self.amount && self.vat
      self.total_payment = (self.amount + self.vat)
    else
      self.total_payment = "0.0"
    end
  end

end
