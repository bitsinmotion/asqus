class PollResponsesController < ApplicationController
  # GET /poll_responses
  # GET /poll_responses.json
  def index
    @poll_responses = PollResponse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poll_responses }
    end
  end

  # GET /poll_responses/1
  # GET /poll_responses/1.json
  def show
    @poll_response = PollResponse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poll_response }
    end
  end

  # GET /poll_responses/new
  # GET /poll_responses/new.json
  def new
    @poll_response = PollResponse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll_response }
    end
  end

  # GET /poll_responses/1/edit
  def edit
    @poll_response = PollResponse.find(params[:id])
  end

  # POST /poll_responses
  # POST /poll_responses.json
  def create
    @poll_response = PollResponse.new(params[:poll_response])

    respond_to do |format|
      if @poll_response.save
        format.html { redirect_to @poll_response, notice: 'Poll response was successfully created.' }
        format.json { render json: @poll_response, status: :created, location: @poll_response }
      else
        format.html { render action: "new" }
        format.json { render json: @poll_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /poll_responses/1
  # PUT /poll_responses/1.json
  def update
    @poll_response = PollResponse.find(params[:id])

    respond_to do |format|
      if @poll_response.update_attributes(params[:poll_response])
        format.html { redirect_to @poll_response, notice: 'Poll response was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @poll_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poll_responses/1
  # DELETE /poll_responses/1.json
  def destroy
    @poll_response = PollResponse.find(params[:id])
    @poll_response.destroy

    respond_to do |format|
      format.html { redirect_to poll_responses_url }
      format.json { head :no_content }
    end
  end
end
