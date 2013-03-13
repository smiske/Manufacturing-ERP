class Employ < ActiveRecord::Base
  attr_accessible :add, :mobile_no, :name

  validates :add, :presence => true
  validates :mobile_no, :presence => true
  validates :name, :presence => true

  has_many :employ_payments

end
