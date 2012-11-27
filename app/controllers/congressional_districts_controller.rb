class CongressionalDistrictsController < ApplicationController

  # GET /congressional_districts
  # GET /congressional_districts.json
  def index
    @congressional_districts = CongressionalDistrict.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @congressional_districts }
    end
  end

  # GET /congressional_districts/1
  # GET /congressional_districts/1.json
  def show
    @congressional_district = CongressionalDistrict.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @congressional_district }
    end
  end

  # GET /congressional_districts/new
  # GET /congressional_districts/new.json
  def new
    @congressional_district = CongressionalDistrict.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @congressional_district }
    end
  end

  # GET /congressional_districts/1/edit
  def edit
    @congressional_district = CongressionalDistrict.find(params[:id])
  end

  # POST /congressional_districts
  # POST /congressional_districts.json
  def create
    @congressional_district = CongressionalDistrict.new(params[:congressional_district])

    respond_to do |format|
      if @congressional_district.save
        format.html { redirect_to @congressional_district, notice: 'Congressional district was successfully created.' }
        format.json { render json: @congressional_district, status: :created, location: @congressional_district }
      else
        format.html { render action: "new" }
        format.json { render json: @congressional_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /congressional_districts/1
  # PUT /congressional_districts/1.json
  def update
    @congressional_district = CongressionalDistrict.find(params[:id])

    respond_to do |format|
      if @congressional_district.update_attributes(params[:congressional_district])
        format.html { redirect_to @congressional_district, notice: 'Congressional district was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @congressional_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congressional_districts/1
  # DELETE /congressional_districts/1.json
  def destroy
    @congressional_district = CongressionalDistrict.find(params[:id])
    @congressional_district.destroy

    respond_to do |format|
      format.html { redirect_to congressional_districts_url }
      format.json { head :no_content }
    end
  end
end
