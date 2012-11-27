class OfficialTenuresController < ApplicationController
  # GET /official_tenures
  # GET /official_tenures.json
  def index
    @official_tenures = OfficialTenure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @official_tenures }
    end
  end

  # GET /official_tenures/1
  # GET /official_tenures/1.json
  def show
    @official_tenure = OfficialTenure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @official_tenure }
    end
  end

  # GET /official_tenures/new
  # GET /official_tenures/new.json
  def new
    @official_tenure = OfficialTenure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @official_tenure }
    end
  end

  # GET /official_tenures/1/edit
  def edit
    @official_tenure = OfficialTenure.find(params[:id])
  end

  # POST /official_tenures
  # POST /official_tenures.json
  def create
    @official_tenure = OfficialTenure.new(params[:official_tenure])

    respond_to do |format|
      if @official_tenure.save
        format.html { redirect_to @official_tenure, notice: 'Official tenure was successfully created.' }
        format.json { render json: @official_tenure, status: :created, location: @official_tenure }
      else
        format.html { render action: "new" }
        format.json { render json: @official_tenure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /official_tenures/1
  # PUT /official_tenures/1.json
  def update
    @official_tenure = OfficialTenure.find(params[:id])

    respond_to do |format|
      if @official_tenure.update_attributes(params[:official_tenure])
        format.html { redirect_to @official_tenure, notice: 'Official tenure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @official_tenure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /official_tenures/1
  # DELETE /official_tenures/1.json
  def destroy
    @official_tenure = OfficialTenure.find(params[:id])
    @official_tenure.destroy

    respond_to do |format|
      format.html { redirect_to official_tenures_url }
      format.json { head :no_content }
    end
  end
end
