class CreateTaxInvoices < ActiveRecord::Migration
  def change
    create_table :tax_invoices do |t|
      t.integer :invoice_number
      t.datetime :invoice_date
      t.datetime :due_date
      t.string :product_name
      t.string :invoice_type
      t.float :labour_charges
      t.float :amount
      t.integer :total_requirement

      t.timestamps
    end
  end
end
