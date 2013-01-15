class Admin::OfficialsController < ApplicationController
  # GET /officials
  # GET /officials.json
  def index
    @officials = Official.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @officials }
    end
  end

  # GET /officials/1
  # GET /officials/1.json
  def show
    @official = Official.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @official }
    end
  end

  # GET /officials/new
  # GET /officials/new.json
  def new
    @official = Official.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @official }
    end
  end

  # GET /officials/1/edit
  def edit
    @official = Official.find(params[:id])
  end

  # POST /officials
  # POST /officials.json
  def create
    @official = Official.new(params[:official])

    respond_to do |format|
      if @official.save
        format.html { redirect_to @official, notice: 'Official was successfully created.' }
        format.json { render json: @official, status: :created, location: @official }
      else
        format.html { render action: "new" }
        format.json { render json: @official.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /officials/1
  # PUT /officials/1.json
  def update
    @official = Official.find(params[:id])
    @official_params = params[:official]
    @state_id = @official_params[:state_id]
    @official_params.delete(:state_id)    
    params.delete(:state_id)
    logger.info "****** updating official *******"
    respond_to do |format|
      if @official.update_attributes(@official_params)
        logger.info "******** official updated ********"
        format.html { redirect_to admin_official_url(@official, :state_id => @state_id), notice: 'Official was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @official.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /officials/1
  # DELETE /officials/1.json
  def destroy
    logger.info "destroying official"
    
    @official = Official.find(params[:id])
    @official.destroy

    respond_to do |format|
      format.html { redirect_to admin_officials_url }
      format.json { head :no_content }
    end
  end
end
