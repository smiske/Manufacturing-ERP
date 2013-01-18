class User < ActiveRecord::Base
  attr_accessible :address, :first_name, :last_name, :middle_name, :mobile_number
end
