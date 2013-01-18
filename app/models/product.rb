class Product < ActiveRecord::Base
  attr_accessible :product_code, :product_name, :product_number, :product_type, :rate, :tax
end
