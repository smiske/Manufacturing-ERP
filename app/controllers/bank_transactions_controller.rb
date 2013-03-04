class BankTransactionsController < ApplicationController
  # GET /bank_transactions
  # GET /bank_transactions.json
  before_filter :authenticate_user!
  def index
    @bank_transactions = BankTransaction.all
    @bank_transactions = BankTransaction.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bank_transactions }
    end
  end

  # GET /bank_transactions/1
  # GET /bank_transactions/1.json
  def show
    @bank_transaction = BankTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bank_transaction }
    end
  end

  # GET /bank_transactions/new
  # GET /bank_transactions/new.json
  def new
    @bank_transaction = BankTransaction.new


    @bank_accounts = BankAccount.all

    @tax_invoices = TaxInvoice.all


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bank_transaction }
    end
  end

  # GET /bank_transactions/1/edit
  def edit
    @bank_transaction = BankTransaction.find(params[:id])
    @bank_accounts = BankAccount.all

    @tax_invoices = TaxInvoice.all

  end

  # POST /bank_transactions
  # POST /bank_transactions.json
  def create
    @bank_transaction = BankTransaction.new(params[:bank_transaction])

    @tax_invoices = TaxInvoice.all

    @bank_accounts = BankAccount.where(:id => params[:bank_transaction][:bank_account_id])

    if params[:bank_transaction][:trans_type] == "withdraw"
      @bank_accounts.first.balance = @bank_accounts.first.balance - params[:bank_transaction][:amount].to_f
      @bank_accounts.first.save
    elsif params[:bank_transaction][:trans_type] == "deposit"
      @bank_accounts.first.balance = @bank_accounts.first.balance + params[:bank_transaction][:amount].to_f
      @bank_accounts.first.save
    end
    respond_to do |format|
      if @bank_transaction.save
        format.html { redirect_to @bank_transaction, notice: 'Bank transaction was successfully created.' }
        format.json { render json: @bank_transaction, status: :created, location: @bank_transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @bank_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bank_transactions/1
  # PUT /bank_transactions/1.json
  def update
    @bank_transaction = BankTransaction.find(params[:id])
    @bank_accounts = BankAccount.all
    @bank_accounts = BankAccount.all

    @tax_invoices = TaxInvoice.all

    respond_to do |format|
      if @bank_transaction.update_attributes(params[:bank_transaction])
        format.html { redirect_to @bank_transaction, notice: 'Bank transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bank_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_transactions/1
  # DELETE /bank_transactions/1.json
  def destroy
    @bank_transaction = BankTransaction.find(params[:id])
    @bank_transaction.destroy

    respond_to do |format|
      format.html { redirect_to bank_transactions_url }
      format.json { head :no_content }
    end
  end
end
