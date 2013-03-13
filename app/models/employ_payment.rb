class EmployPayment < ActiveRecord::Base
  attr_accessible :amount, :employ_name, :micor_code, :bank_account_id

  validates :amount, :presence => true
  validates :employ_name, :presence => true
  validates :micor_code, :presence => true
  validates :bank_account_id, :presence => true
  belongs_to :employ
  belongs_to :bank_account

end
