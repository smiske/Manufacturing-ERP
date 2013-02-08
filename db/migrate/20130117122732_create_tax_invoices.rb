class CreateTaxInvoices < ActiveRecord::Migration
  def change
    create_table :tax_invoices do |t|
      t.integer :PO_number
      t.integer :invoice_number
      t.date :invoice_date
      t.date :due_date
      t.string :product_name
      t.string :invoice_type
      t.float :labour_charges
      t.integer :quantity
      t.float :rate
      t.float :total_payment
      t.float :amount
      t.float :vat
      t.float :tax

      t.timestamps
    end
  end
end
