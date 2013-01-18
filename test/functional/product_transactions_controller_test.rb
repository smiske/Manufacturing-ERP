require 'test_helper'

class ProductTransactionsControllerTest < ActionController::TestCase
  setup do
    @product_transaction = product_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_transaction" do
    assert_difference('ProductTransaction.count') do
      post :create, product_transaction: { delivary_challan: @product_transaction.delivary_challan, delivary_type: @product_transaction.delivary_type, tax: @product_transaction.tax, tax_invoice_id: @product_transaction.tax_invoice_id, transaction_id: @product_transaction.transaction_id }
    end

    assert_redirected_to product_transaction_path(assigns(:product_transaction))
  end

  test "should show product_transaction" do
    get :show, id: @product_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_transaction
    assert_response :success
  end

  test "should update product_transaction" do
    put :update, id: @product_transaction, product_transaction: { delivary_challan: @product_transaction.delivary_challan, delivary_type: @product_transaction.delivary_type, tax: @product_transaction.tax, tax_invoice_id: @product_transaction.tax_invoice_id, transaction_id: @product_transaction.transaction_id }
    assert_redirected_to product_transaction_path(assigns(:product_transaction))
  end

  test "should destroy product_transaction" do
    assert_difference('ProductTransaction.count', -1) do
      delete :destroy, id: @product_transaction
    end

    assert_redirected_to product_transactions_path
  end
end
