# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.create( [
{:id=>"1", :product_number=>"C8675445", :product_name=>"CP 1230 VR BACK HEAD", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"195.00"},
{:id=>"2", :product_number=>"3303005190", :product_name=>"CP 6 SVR CYLINDER", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"387.00"},
{:id=>"3", :product_number=>"C8683448", :product_name=>"CP 1240 VR BACK HEAD", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"215.00"},
{:id=>"4", :product_number=>"D830412", :product_name=>"CP 9 HEX CHUCK", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"55.00"},
{:id=>"5", :product_number=>"C8667412", :product_name=>"FR. HRAD CP 9 A", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"125.00"},
{:id=>"6", :product_number=>"C8668413", :product_name=>"FR. HEAD CP 9 C", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"95.00"},
{:id=>"7", :product_number=>"CP129856", :product_name=>"CYLINDER", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"65.00"},
{:id=>"8", :product_number=>"D5011836", :product_name=>"VALVE CASE", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"25.00"},
{:id=>"9", :product_number=>"D7852447", :product_name=>"CP 1210 VALVE CASE (OLD)", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"100.00"},
{:id=>"10", :product_number=>"C8533836", :product_name=>"CP 4123 S CYLINDER", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"65.00"},
{:id=>"11", :product_number=>"C9129856", :product_name=>"CP 4123 T CYLINDER", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"65.00"},
{:id=>"12", :product_number=>"C8609445", :product_name=>"CP 1230 FR. HEAD", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"90.00"},
{:id=>"13", :product_number=>"CP 1230 FR.HEAD", :product_name=>"", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"90.00"},
{:id=>"14", :product_number=>"D8568439", :product_name=>"CP 22 CYLINDER", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"240.00"},
{:id=>"15", :product_number=>"C8673439", :product_name=>"CP 22 VALVE CHEST", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"250.00"},
{:id=>"16", :product_number=>"D5075836", :product_name=>"CP 4121 LVC LID", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>"20.00"},
{:id=>"", :product_number=>"", :product_name=>"", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>""},
{:id=>"", :product_number=>"", :product_name=>"", :vender_code=>"1875", :product_type=>"Labour Charges Only", :tax=>"0.0", :rate=>""},

                ])

BankAccount.create([
    {
      :bank_name=>"SBI", :account_number=>"25425255", :branch_add=>"nasik", :ifsc_code=>"BBI123", :contact_number=>"54251652", :branch_manager_contact_no=>"42515362", :balance=>"2525125"

    }
            ]

)

