class StateHouseDistrictsController < ApplicationController


  # GET /state_house_districts
  # GET /state_house_districts.json
  def index
    @state_house_districts = StateHouseDistrict.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @state_house_districts }
    end
  end

  # GET /state_house_districts/1
  # GET /state_house_districts/1.json
  def show
    @state_house_district = StateHouseDistrict.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @state_house_district }
    end
  end

  # GET /state_house_districts/new
  # GET /state_house_districts/new.json
  def new
    @state_house_district = StateHouseDistrict.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @state_house_district }
    end
  end

  # GET /state_house_districts/1/edit
  def edit
    @state_house_district = StateHouseDistrict.find(params[:id])
  end

  # POST /state_house_districts
  # POST /state_house_districts.json
  def create
    @state_house_district = StateHouseDistrict.new(params[:state_house_district])

    respond_to do |format|
      if @state_house_district.save
        format.html { redirect_to @state_house_district, notice: 'State house district was successfully created.' }
        format.json { render json: @state_house_district, status: :created, location: @state_house_district }
      else
        format.html { render action: "new" }
        format.json { render json: @state_house_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /state_house_districts/1
  # PUT /state_house_districts/1.json
  def update
    @state_house_district = StateHouseDistrict.find(params[:id])

    respond_to do |format|
      if @state_house_district.update_attributes(params[:state_house_district])
        format.html { redirect_to @state_house_district, notice: 'State house district was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @state_house_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_house_districts/1
  # DELETE /state_house_districts/1.json
  def destroy
    @state_house_district = StateHouseDistrict.find(params[:id])
    @state_house_district.destroy

    respond_to do |format|
      format.html { redirect_to state_house_districts_url }
      format.json { head :no_content }
    end
  end
end
