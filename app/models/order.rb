class Order < ActiveRecord::Base
  attr_accessible  :date, :product_name, :quantity


  validates :date, :presence => true
  validates :product_name, :presence => true
  validates :quantity, :presence => true

  belongs_to :product
end
