class CreateEmployPayments < ActiveRecord::Migration
  def change
    create_table :employ_payments do |t|
      t.string :employ_name
      t.integer :micor_code
      t.float :amount

      t.timestamps
    end
  end
end
