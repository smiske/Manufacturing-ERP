# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130118090910) do

  create_table "bank_accounts", :force => true do |t|
    t.string   "bank_name"
    t.string   "account_number"
    t.string   "branch_add"
    t.string   "ifsc_code"
    t.integer  "contact_number"
    t.integer  "branch_manager_contact_no"
    t.float    "balance"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "bank_transactions", :force => true do |t|
    t.string   "transaction_type"
    t.string   "micor_code"
    t.integer  "bank_account_id"
    t.string   "trans_type"
    t.float    "amount"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "PO_number"
    t.date     "date"
    t.string   "product_name"
    t.integer  "quantity"
    t.float    "rate"
    t.float    "tax"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "product_transactions", :force => true do |t|
    t.string   "delivary_type"
    t.integer  "delivary_challan"
    t.integer  "tax_invoice_id"
    t.float    "tax"
    t.integer  "transaction_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "product_number"
    t.string   "vender_code"
    t.string   "product_name"
    t.string   "product_type"
    t.float    "tax"
    t.float    "rate"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "refunds", :force => true do |t|
    t.integer  "transaction_id"
    t.integer  "product_transaction_id"
    t.integer  "quantity"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "tax_invoices", :force => true do |t|
    t.integer  "PO_number"
    t.integer  "invoice_number"
    t.date     "invoice_date"
    t.date     "due_date"
    t.string   "product_name"
    t.string   "invoice_type"
    t.float    "labour_charges"
    t.integer  "quantity"
    t.float    "rate"
    t.float    "total_payment"
    t.float    "amount"
    t.float    "vat"
    t.float    "tax"
    t.string   "payment"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "transactions", :force => true do |t|
    t.integer  "bank_transaction_id"
    t.float    "total"
    t.float    "total_refund"
    t.integer  "product_transaction_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "mobile_number"
    t.string   "address"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
