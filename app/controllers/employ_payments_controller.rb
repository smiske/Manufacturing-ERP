class EmployPaymentsController < ApplicationController
  # GET /employ_payments
  # GET /employ_payments.json
  def index
    @employ_payments = EmployPayment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employ_payments }
    end
  end

  # GET /employ_payments/1
  # GET /employ_payments/1.json
  def show
    @employ_payment = EmployPayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employ_payment }
    end
  end

  # GET /employ_payments/new
  # GET /employ_payments/new.json
  def new
    @employ_payment = EmployPayment.new
    @employs = Employ.all
    @bank_accounts = BankAccount.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employ_payment }
    end
  end

  # GET /employ_payments/1/edit
  def edit
    @employ_payment = EmployPayment.find(params[:id])
    @employs = Employ.all
    @bank_accounts = BankAccount.all
  end

  # POST /employ_payments
  # POST /employ_payments.json
  def create
    @employ_payment = EmployPayment.new(params[:employ_payment])
    @employs = Employ.all
    @bank_accounts = BankAccount.all

    @bank_accounts = BankAccount.where(:id => params[:employ_payment][:bank_account_id])
    @bank_accounts.first.balance = @bank_accounts.first.balance - params[:employ_payment][:amount].to_f
    @bank_accounts.first.save

    respond_to do |format|
      if @employ_payment.save
        format.html { redirect_to @employ_payment, notice: 'Employ payment was successfully created.' }
        format.json { render json: @employ_payment, status: :created, location: @employ_payment }
      else
        format.html { render action: "new" }
        format.json { render json: @employ_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employ_payments/1
  # PUT /employ_payments/1.json
  def update
    @employ_payment = EmployPayment.find(params[:id])
    @employs = Employ.all
    @bank_accounts = BankAccount.all

    respond_to do |format|
      if @employ_payment.update_attributes(params[:employ_payment])
        format.html { redirect_to @employ_payment, notice: 'Employ payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employ_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employ_payments/1
  # DELETE /employ_payments/1.json
  def destroy
    @employ_payment = EmployPayment.find(params[:id])
    @employ_payment.destroy

    respond_to do |format|
      format.html { redirect_to employ_payments_url }
      format.json { head :no_content }
    end
  end
end
