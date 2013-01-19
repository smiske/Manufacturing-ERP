# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.create( [
    {:product_number=>"A001", :product_code=>"A2123", :product_name=>"lapy", :product_type=>"labour", :tax=>"0.25", :rate=>"251.23"},
    {:product_number=>"SPC1210211729", :product_code=>"C8663448", :product_name=>"CP 1240 FR. HEAD", :product_type=>"labour", :tax=>"1", :rate=>"1"},
    {:product_number=>"SPC1210211740", :product_code=>"C8663788", :product_name=>"CP 1240 ANVIL BLOCK", :product_type=>"labour", :tax=>"1", :rate=>"1"},
    {:product_number=>"SPC1210211760", :product_code=>"D8663448", :product_name=>"CP 1240 CYLINDER", :product_type=>"labour", :tax=>"1", :rate=>"1"}
])

BankAccount.create([
    {
      :bank_name=>"SBI", :account_number=>"25425255", :branch_add=>"nasik", :ifsc_code=>"BBI123", :contact_number=>"54251652", :branch_manager_contact_no=>"42515362", :balance=>"2525125"

    }
            ]

)

