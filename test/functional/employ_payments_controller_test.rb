require 'test_helper'

class EmployPaymentsControllerTest < ActionController::TestCase
  setup do
    @employ_payment = employ_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employ_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employ_payment" do
    assert_difference('EmployPayment.count') do
      post :create, employ_payment: { amount: @employ_payment.amount, employ_name: @employ_payment.employ_name, micor_code: @employ_payment.micor_code }
    end

    assert_redirected_to employ_payment_path(assigns(:employ_payment))
  end

  test "should show employ_payment" do
    get :show, id: @employ_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employ_payment
    assert_response :success
  end

  test "should update employ_payment" do
    put :update, id: @employ_payment, employ_payment: { amount: @employ_payment.amount, employ_name: @employ_payment.employ_name, micor_code: @employ_payment.micor_code }
    assert_redirected_to employ_payment_path(assigns(:employ_payment))
  end

  test "should destroy employ_payment" do
    assert_difference('EmployPayment.count', -1) do
      delete :destroy, id: @employ_payment
    end

    assert_redirected_to employ_payments_path
  end
end
