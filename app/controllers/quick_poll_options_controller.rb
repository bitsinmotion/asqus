class QuickPollOptionsController < ApplicationController
  # GET /quick_poll_options
  # GET /quick_poll_options.json
  def index
    @quick_poll_options = QuickPollOption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quick_poll_options }
    end
  end

  # GET /quick_poll_options/1
  # GET /quick_poll_options/1.json
  def show
    @quick_poll_option = QuickPollOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quick_poll_option }
    end
  end

  # GET /quick_poll_options/new
  # GET /quick_poll_options/new.json
  def new
    @quick_poll_option = QuickPollOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quick_poll_option }
    end
  end

  # GET /quick_poll_options/1/edit
  def edit
    @quick_poll_option = QuickPollOption.find(params[:id])
  end

  # POST /quick_poll_options
  # POST /quick_poll_options.json
  def create
    @quick_poll_option = QuickPollOption.new(params[:quick_poll_option])

    respond_to do |format|
      if @quick_poll_option.save
        format.html { redirect_to @quick_poll_option, notice: 'Quick poll option was successfully created.' }
        format.json { render json: @quick_poll_option, status: :created, location: @quick_poll_option }
      else
        format.html { render action: "new" }
        format.json { render json: @quick_poll_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quick_poll_options/1
  # PUT /quick_poll_options/1.json
  def update
    @quick_poll_option = QuickPollOption.find(params[:id])

    respond_to do |format|
      if @quick_poll_option.update_attributes(params[:quick_poll_option])
        format.html { redirect_to @quick_poll_option, notice: 'Quick poll option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quick_poll_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quick_poll_options/1
  # DELETE /quick_poll_options/1.json
  def destroy
    @quick_poll_option = QuickPollOption.find(params[:id])
    @quick_poll_option.destroy

    respond_to do |format|
      format.html { redirect_to quick_poll_options_url }
      format.json { head :no_content }
    end
  end
end
