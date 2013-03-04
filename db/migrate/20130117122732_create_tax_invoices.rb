class CreateTaxInvoices < ActiveRecord::Migration
  def change
    create_table :tax_invoices do |t|
      t.integer :PO_number
      t.integer :invoice_number
      t.date :invoice_date
      t.date :po_date
      t.string :product_name
      t.string :invoice_type
      t.string :product_number
      t.integer :quantity
      t.float :rate

      t.float :amount



      t.float :excise
      t.float :ed_cess
      t.float :edu_cess
      t.float :value_added_tax
      t.float :total_tax
      t.float :total_payment
      t.integer :return_quantity
      t.integer :final_quantity
      t.integer :company_id

      t.timestamps
    end
  end
end
