class Company < ActiveRecord::Base
  attr_accessible :add, :id, :name

  has_many :tax_invoices
end
