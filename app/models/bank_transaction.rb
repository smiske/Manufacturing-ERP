class BankTransaction < ActiveRecord::Base
  attr_accessible :bank_account_id, :micor_code, :type
end
