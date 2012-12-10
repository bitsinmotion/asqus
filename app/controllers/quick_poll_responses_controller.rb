class QuickPollResponsesController < ApplicationController
  # GET /quick_poll_responses
  # GET /quick_poll_responses.json
  def index
    @quick_poll_responses = QuickPollResponse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quick_poll_responses }
    end
  end

  # GET /quick_poll_responses/1
  # GET /quick_poll_responses/1.json
  def show
    @quick_poll_response = QuickPollResponse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quick_poll_response }
    end
  end

  # GET /quick_poll_responses/new
  # GET /quick_poll_responses/new.json
  def new
    @quick_poll_response = QuickPollResponse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quick_poll_response }
    end
  end

  # GET /quick_poll_responses/1/edit
  def edit
    @quick_poll_response = QuickPollResponse.find(params[:id])
  end

  # POST /quick_poll_responses
  # POST /quick_poll_responses.json
  def create
    @quick_poll_response = QuickPollResponse.new(params[:quick_poll_response])

    respond_to do |format|
      if @quick_poll_response.save
        format.html { redirect_to @quick_poll_response, notice: 'Quick poll response was successfully created.' }
        format.json { render json: @quick_poll_response, status: :created, location: @quick_poll_response }
      else
        format.html { render action: "new" }
        format.json { render json: @quick_poll_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quick_poll_responses/1
  # PUT /quick_poll_responses/1.json
  def update
    @quick_poll_response = QuickPollResponse.find(params[:id])

    respond_to do |format|
      if @quick_poll_response.update_attributes(params[:quick_poll_response])
        format.html { redirect_to @quick_poll_response, notice: 'Quick poll response was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quick_poll_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quick_poll_responses/1
  # DELETE /quick_poll_responses/1.json
  def destroy
    @quick_poll_response = QuickPollResponse.find(params[:id])
    @quick_poll_response.destroy

    respond_to do |format|
      format.html { redirect_to quick_poll_responses_url }
      format.json { head :no_content }
    end
  end
end
