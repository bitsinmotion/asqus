class PollWorkflowStatesController < ApplicationController
  # GET /poll_workflow_states
  # GET /poll_workflow_states.json
  def index
    @poll_workflow_states = PollWorkflowState.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poll_workflow_states }
    end
  end

  # GET /poll_workflow_states/1
  # GET /poll_workflow_states/1.json
  def show
    @poll_workflow_state = PollWorkflowState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poll_workflow_state }
    end
  end

  # GET /poll_workflow_states/new
  # GET /poll_workflow_states/new.json
  def new
    @poll_workflow_state = PollWorkflowState.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll_workflow_state }
    end
  end

  # GET /poll_workflow_states/1/edit
  def edit
    @poll_workflow_state = PollWorkflowState.find(params[:id])
  end

  # POST /poll_workflow_states
  # POST /poll_workflow_states.json
  def create
    @poll_workflow_state = PollWorkflowState.new(params[:poll_workflow_state])

    respond_to do |format|
      if @poll_workflow_state.save
        format.html { redirect_to @poll_workflow_state, notice: 'Poll workflow state was successfully created.' }
        format.json { render json: @poll_workflow_state, status: :created, location: @poll_workflow_state }
      else
        format.html { render action: "new" }
        format.json { render json: @poll_workflow_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /poll_workflow_states/1
  # PUT /poll_workflow_states/1.json
  def update
    @poll_workflow_state = PollWorkflowState.find(params[:id])

    respond_to do |format|
      if @poll_workflow_state.update_attributes(params[:poll_workflow_state])
        format.html { redirect_to @poll_workflow_state, notice: 'Poll workflow state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @poll_workflow_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poll_workflow_states/1
  # DELETE /poll_workflow_states/1.json
  def destroy
    @poll_workflow_state = PollWorkflowState.find(params[:id])
    @poll_workflow_state.destroy

    respond_to do |format|
      format.html { redirect_to poll_workflow_states_url }
      format.json { head :no_content }
    end
  end
end
