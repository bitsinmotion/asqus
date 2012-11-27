class StateSenateDistrictsController < ApplicationController

  # GET /state_senate_districts
  # GET /state_senate_districts.json
  def index
    @state_senate_districts = StateSenateDistrict.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @state_senate_districts }
    end
  end

  # GET /state_senate_districts/1
  # GET /state_senate_districts/1.json
  def show
    @state_senate_district = StateSenateDistrict.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @state_senate_district }
    end
  end

  # GET /state_senate_districts/new
  # GET /state_senate_districts/new.json
  def new
    @state_senate_district = StateSenateDistrict.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @state_senate_district }
    end
  end

  # GET /state_senate_districts/1/edit
  def edit
    @state_senate_district = StateSenateDistrict.find(params[:id])
  end

  # POST /state_senate_districts
  # POST /state_senate_districts.json
  def create
    @state_senate_district = StateSenateDistrict.new(params[:state_senate_district])

    respond_to do |format|
      if @state_senate_district.save
        format.html { redirect_to @state_senate_district, notice: 'State senate district was successfully created.' }
        format.json { render json: @state_senate_district, status: :created, location: @state_senate_district }
      else
        format.html { render action: "new" }
        format.json { render json: @state_senate_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /state_senate_districts/1
  # PUT /state_senate_districts/1.json
  def update
    @state_senate_district = StateSenateDistrict.find(params[:id])

    respond_to do |format|
      if @state_senate_district.update_attributes(params[:state_senate_district])
        format.html { redirect_to @state_senate_district, notice: 'State senate district was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @state_senate_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_senate_districts/1
  # DELETE /state_senate_districts/1.json
  def destroy
    @state_senate_district = StateSenateDistrict.find(params[:id])
    @state_senate_district.destroy

    respond_to do |format|
      format.html { redirect_to state_senate_districts_url }
      format.json { head :no_content }
    end
  end
end
