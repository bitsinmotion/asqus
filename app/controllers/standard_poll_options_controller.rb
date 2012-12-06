class StandardPollOptionsController < ApplicationController
  # GET /standard_poll_options
  # GET /standard_poll_options.json
  def index
    @standard_poll_options = StandardPollOption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @standard_poll_options }
    end
  end

  # GET /standard_poll_options/1
  # GET /standard_poll_options/1.json
  def show
    @standard_poll_option = StandardPollOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @standard_poll_option }
    end
  end

  # GET /standard_poll_options/new
  # GET /standard_poll_options/new.json
  def new
    @standard_poll_option = StandardPollOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @standard_poll_option }
    end
  end

  # GET /standard_poll_options/1/edit
  def edit
    @standard_poll_option = StandardPollOption.find(params[:id])
  end

  # POST /standard_poll_options
  # POST /standard_poll_options.json
  def create
    @standard_poll_option = StandardPollOption.new(params[:standard_poll_option])

    respond_to do |format|
      if @standard_poll_option.save
        format.html { redirect_to @standard_poll_option, notice: 'Standard poll option was successfully created.' }
        format.json { render json: @standard_poll_option, status: :created, location: @standard_poll_option }
      else
        format.html { render action: "new" }
        format.json { render json: @standard_poll_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /standard_poll_options/1
  # PUT /standard_poll_options/1.json
  def update
    @standard_poll_option = StandardPollOption.find(params[:id])

    respond_to do |format|
      if @standard_poll_option.update_attributes(params[:standard_poll_option])
        format.html { redirect_to @standard_poll_option, notice: 'Standard poll option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @standard_poll_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standard_poll_options/1
  # DELETE /standard_poll_options/1.json
  def destroy
    @standard_poll_option = StandardPollOption.find(params[:id])
    @standard_poll_option.destroy

    respond_to do |format|
      format.html { redirect_to standard_poll_options_url }
      format.json { head :no_content }
    end
  end
end
