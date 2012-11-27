class OfficialAdministratorsController < ApplicationController
  # GET /official_administrators
  # GET /official_administrators.json
  def index
    @official_administrators = OfficialAdministrator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @official_administrators }
    end
  end

  # GET /official_administrators/1
  # GET /official_administrators/1.json
  def show
    @official_administrator = OfficialAdministrator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @official_administrator }
    end
  end

  # GET /official_administrators/new
  # GET /official_administrators/new.json
  def new
    @official_administrator = OfficialAdministrator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @official_administrator }
    end
  end

  # GET /official_administrators/1/edit
  def edit
    @official_administrator = OfficialAdministrator.find(params[:id])
  end

  # POST /official_administrators
  # POST /official_administrators.json
  def create
    @official_administrator = OfficialAdministrator.new(params[:official_administrator])

    respond_to do |format|
      if @official_administrator.save
        format.html { redirect_to @official_administrator, notice: 'Official administrator was successfully created.' }
        format.json { render json: @official_administrator, status: :created, location: @official_administrator }
      else
        format.html { render action: "new" }
        format.json { render json: @official_administrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /official_administrators/1
  # PUT /official_administrators/1.json
  def update
    @official_administrator = OfficialAdministrator.find(params[:id])

    respond_to do |format|
      if @official_administrator.update_attributes(params[:official_administrator])
        format.html { redirect_to @official_administrator, notice: 'Official administrator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @official_administrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /official_administrators/1
  # DELETE /official_administrators/1.json
  def destroy
    @official_administrator = OfficialAdministrator.find(params[:id])
    @official_administrator.destroy

    respond_to do |format|
      format.html { redirect_to official_administrators_url }
      format.json { head :no_content }
    end
  end
end
