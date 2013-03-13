class EmploysController < ApplicationController
  # GET /employs
  # GET /employs.json
  def index
    @employs = Employ.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employs }
    end
  end

  # GET /employs/1
  # GET /employs/1.json
  def show
    @employ = Employ.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employ }
    end
  end

  # GET /employs/new
  # GET /employs/new.json
  def new
    @employ = Employ.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employ }
    end
  end

  # GET /employs/1/edit
  def edit
    @employ = Employ.find(params[:id])
  end

  # POST /employs
  # POST /employs.json
  def create
    @employ = Employ.new(params[:employ])

    respond_to do |format|
      if @employ.save
        format.html { redirect_to @employ, notice: 'Employ was successfully created.' }
        format.json { render json: @employ, status: :created, location: @employ }
      else
        format.html { render action: "new" }
        format.json { render json: @employ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employs/1
  # PUT /employs/1.json
  def update
    @employ = Employ.find(params[:id])

    respond_to do |format|
      if @employ.update_attributes(params[:employ])
        format.html { redirect_to @employ, notice: 'Employ was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employs/1
  # DELETE /employs/1.json
  def destroy
    @employ = Employ.find(params[:id])
    @employ.destroy

    respond_to do |format|
      format.html { redirect_to employs_url }
      format.json { head :no_content }
    end
  end
end
