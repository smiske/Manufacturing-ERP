class ProductTransactionsController < ApplicationController
  # GET /product_transactions
  # GET /product_transactions.json
  def index
    @product_transactions = ProductTransaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_transactions }
    end
  end

  # GET /product_transactions/1
  # GET /product_transactions/1.json
  def show
    @product_transaction = ProductTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_transaction }
    end
  end

  # GET /product_transactions/new
  # GET /product_transactions/new.json
  def new
    @product_transaction = ProductTransaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_transaction }
    end
  end

  # GET /product_transactions/1/edit
  def edit
    @product_transaction = ProductTransaction.find(params[:id])
  end

  # POST /product_transactions
  # POST /product_transactions.json
  def create
    @product_transaction = ProductTransaction.new(params[:product_transaction])

    respond_to do |format|
      if @product_transaction.save
        format.html { redirect_to @product_transaction, notice: 'Product transaction was successfully created.' }
        format.json { render json: @product_transaction, status: :created, location: @product_transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @product_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_transactions/1
  # PUT /product_transactions/1.json
  def update
    @product_transaction = ProductTransaction.find(params[:id])

    respond_to do |format|
      if @product_transaction.update_attributes(params[:product_transaction])
        format.html { redirect_to @product_transaction, notice: 'Product transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_transactions/1
  # DELETE /product_transactions/1.json
  def destroy
    @product_transaction = ProductTransaction.find(params[:id])
    @product_transaction.destroy

    respond_to do |format|
      format.html { redirect_to product_transactions_url }
      format.json { head :no_content }
    end
  end
end
