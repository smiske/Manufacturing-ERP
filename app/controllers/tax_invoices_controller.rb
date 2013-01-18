class TaxInvoicesController < ApplicationController
  # GET /tax_invoices
  # GET /tax_invoices.json
  before_filter :authenticate_user!
  def index
    @tax_invoices = TaxInvoice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tax_invoices }
    end
  end

  # GET /tax_invoices/1
  # GET /tax_invoices/1.json
  def show
    @tax_invoice = TaxInvoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tax_invoice }
    end
  end

  # GET /tax_invoices/new
  # GET /tax_invoices/new.json
  def new
    @tax_invoice = TaxInvoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tax_invoice }
    end
  end

  # GET /tax_invoices/1/edit
  def edit
    @tax_invoice = TaxInvoice.find(params[:id])
  end

  # POST /tax_invoices
  # POST /tax_invoices.json
  def create
    @tax_invoice = TaxInvoice.new(params[:tax_invoice])

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
