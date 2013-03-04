class TaxInvoicesController < ApplicationController
  # GET /tax_invoices
  # GET /tax_invoices.json
  before_filter :authenticate_user!
  def index
    @tax_invoices = TaxInvoice.all
    @tax_invoices = TaxInvoice.paginate(:page => params[:page], :per_page => 10)

    @bank_transactions = BankTransaction.all


    
    
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tax_invoices }
    end
  end

  # GET /tax_invoices/1
  # GET /tax_invoices/1.json
  def show
    @tax_invoice = TaxInvoice.find(params[:id])
    session[:tax_invoice_id] = params[:id]
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tax_invoice }
    end
  end

  def generate_pdf
    @tax_invoice = TaxInvoice.find(session[:tax_invoice_id])


    #session[:tax_invoice_id] = nil
  end

  # GET /tax_invoices/new
  # GET /tax_invoices/new.json
  def new
    @tax_invoice = TaxInvoice.new
    @products = Product.all
    @orders = Order.all
    @companies = Company.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tax_invoice }
    end
  end

  # GET /tax_invoices/1/edit
  def edit
    @tax_invoice = TaxInvoice.find(params[:id])
    @products = Product.all
    @orders = Order.all
    @companies = Company.all
  end

  # POST /tax_invoices
  # POST /tax_invoices.json
  def create
    @tax_invoice = TaxInvoice.new(params[:tax_invoice])

    @companies = Company.all

    @order = Order.where(:PO_number => params[:tax_invoice][:PO_number])

    @products = Product.all
    @orders = Order.all

   if params[:tax_invoice][:invoice_type] == "With Material"

     @tax_invoice.rate = @order.first.rate
     @tax_invoice.product_name =  @order.first.product_name
     @tax_invoice.quantity =  @order.first.quantity
     @tax_invoice.po_date =  @order.first.date
     @tax_invoice.product_number =  @order.first.product_number

      @tax_invoice.final_quantity = @tax_invoice.quantity - @tax_invoice.return_quantity

      @tax_invoice.amount = @tax_invoice.rate * @tax_invoice.final_quantity

      @tax_invoice.excise = @tax_invoice.amount * 0.12

      @tax_invoice.ed_cess = @tax_invoice.excise * 0.02

      @tax_invoice.edu_cess = @tax_invoice.excise * 0.01

      @tax_invoice.value_added_tax = @tax_invoice.amount * 0.125

      @tax_invoice.total_tax = @tax_invoice.excise + @tax_invoice.ed_cess + @tax_invoice.edu_cess + @tax_invoice.value_added_tax

      @tax_invoice.total_payment = @tax_invoice.amount + @tax_invoice.total_tax


    elsif params[:tax_invoice][:invoice_type] == "Labour Charges Only"

       @tax_invoice.rate = @order.first.rate
       @tax_invoice.product_name =  @order.first.product_name
       @tax_invoice.quantity =  @order.first.quantity
       @tax_invoice.po_date =  @order.first.date
       @tax_invoice.product_number =  @order.first.product_number

       @tax_invoice.final_quantity = @tax_invoice.quantity - @tax_invoice.return_quantity

       @tax_invoice.amount = @tax_invoice.rate * @tax_invoice.final_quantity

       @tax_invoice.excise = 0.0

       @tax_invoice.ed_cess = 0.0

       @tax_invoice.edu_cess = 0.0

       @tax_invoice.value_added_tax = @tax_invoice.amount * 0.125

       @tax_invoice.total_tax = @tax_invoice.excise + @tax_invoice.ed_cess + @tax_invoice.edu_cess + @tax_invoice.value_added_tax

       @tax_invoice.total_payment = @tax_invoice.amount + @tax_invoice.total_tax

    end


    respond_to do |format|
      if @tax_invoice.save
        format.html { redirect_to @tax_invoice, notice: 'Tax invoice was successfully created.' }
        format.json { render json: @tax_invoice, status: :created, location: @tax_invoice }
      else
        format.html { render action: "new" }
        format.json { render json: @tax_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tax_invoices/1
  # PUT /tax_invoices/1.json
  def update
    @tax_invoice = TaxInvoice.find(params[:id])

    respond_to do |format|
      if @tax_invoice.update_attributes(params[:tax_invoice])
        format.html { redirect_to @tax_invoice, notice: 'Tax invoice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tax_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tax_invoices/1
  # DELETE /tax_invoices/1.json
  def destroy
    @tax_invoice = TaxInvoice.find(params[:id])
    @tax_invoice.destroy

    respond_to do |format|
      format.html { redirect_to tax_invoices_url }
      format.json { head :no_content }
    end
  end
end
