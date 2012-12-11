class QuickPollTypesController < ApplicationController
  # GET /quick_poll_types
  # GET /quick_poll_types.json
  def index
    @quick_poll_types = QuickPollType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quick_poll_types }
    end
  end

  # GET /quick_poll_types/1
  # GET /quick_poll_types/1.json
  def show
    @quick_poll_type = QuickPollType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quick_poll_type }
    end
  end

  # GET /quick_poll_types/new
  # GET /quick_poll_types/new.json
  def new
    @quick_poll_type = QuickPollType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quick_poll_type }
    end
  end

  # GET /quick_poll_types/1/edit
  def edit
    @quick_poll_type = QuickPollType.find(params[:id])
  end

  # POST /quick_poll_types
  # POST /quick_poll_types.json
  def create
    @quick_poll_type = QuickPollType.new(params[:quick_poll_type])

    respond_to do |format|
      if @quick_poll_type.save
        format.html { redirect_to @quick_poll_type, notice: 'Quick poll type was successfully created.' }
        format.json { render json: @quick_poll_type, status: :created, location: @quick_poll_type }
      else
        format.html { render action: "new" }
        format.json { render json: @quick_poll_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quick_poll_types/1
  # PUT /quick_poll_types/1.json
  def update
    @quick_poll_type = QuickPollType.find(params[:id])

    respond_to do |format|
      if @quick_poll_type.update_attributes(params[:quick_poll_type])
        format.html { redirect_to @quick_poll_type, notice: 'Quick poll type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quick_poll_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quick_poll_types/1
  # DELETE /quick_poll_types/1.json
  def destroy
    @quick_poll_type = QuickPollType.find(params[:id])
    @quick_poll_type.destroy

    respond_to do |format|
      format.html { redirect_to quick_poll_types_url }
      format.json { head :no_content }
    end
  end
end
