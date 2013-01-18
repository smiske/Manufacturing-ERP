require 'test_helper'

class TaxInvoicesControllerTest < ActionController::TestCase
  setup do
    @tax_invoice = tax_invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tax_invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tax_invoice" do
    assert_difference('TaxInvoice.count') do
      post :create, tax_invoice: { amount: @tax_invoice.amount, due_date: @tax_invoice.due_date, invoice_date: @tax_invoice.invoice_date, invoice_number: @tax_invoice.invoice_number, invoice_type: @tax_invoice.invoice_type, labour_charges: @tax_invoice.labour_charges, product_name: @tax_invoice.product_name, total_requirement: @tax_invoice.total_requirement }
    end

    assert_redirected_to tax_invoice_path(assigns(:tax_invoice))
  end

  test "should show tax_invoice" do
    get :show, id: @tax_invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tax_invoice
    assert_response :success
  end

  test "should update tax_invoice" do
    put :update, id: @tax_invoice, tax_invoice: { amount: @tax_invoice.amount, due_date: @tax_invoice.due_date, invoice_date: @tax_invoice.invoice_date, invoice_number: @tax_invoice.invoice_number, invoice_type: @tax_invoice.invoice_type, labour_charges: @tax_invoice.labour_charges, product_name: @tax_invoice.product_name, total_requirement: @tax_invoice.total_requirement }
    assert_redirected_to tax_invoice_path(assigns(:tax_invoice))
  end

  test "should destroy tax_invoice" do
    assert_difference('TaxInvoice.count', -1) do
      delete :destroy, id: @tax_invoice
    end

    assert_redirected_to tax_invoices_path
  end
end
