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
    @quick_poll = QuickPoll.find(params[:quick_poll_id])

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

    response = params[:quick_poll_response]
    response[:user_id] = current_user.id
    response[:value] = params[:value]    # i have no fucking idea what's going on here and it's too fucking late to think about it

    @quick_poll_response = QuickPollResponse.new(response)

    if @quick_poll_response.save
      logger.info "save succeeded"
    else
      logger.info "save failed"
    end

    redirect_to "/"

  end
