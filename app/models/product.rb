class Product < ActiveRecord::Base
  attr_accessible :vender_code, :product_name, :product_number, :product_type, :rate, :tax

  validates :product_name, :presence => true
  validates :product_number, :presence => true
  validates :product_type, :presence => true
  validates :rate, :presence => true
  validates :tax, :presence => true

  has_one :tax_invoice

  has_many :orders


  has_one :user
end
