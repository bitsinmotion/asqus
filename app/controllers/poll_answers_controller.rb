class PollAnswersController < ApplicationController
  # GET /poll_answers
  # GET /poll_answers.json
  def index
    @poll_answers = PollAnswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poll_answers }
    end
  end

  # GET /poll_answers/1
  # GET /poll_answers/1.json
  def show
    @poll_answer = PollAnswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poll_answer }
    end
  end

  # GET /poll_answers/new
  # GET /poll_answers/new.json
  def new
    @poll_answer = PollAnswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll_answer }
    end
  end

  # GET /poll_answers/1/edit
  def edit
    @poll_answer = PollAnswer.find(params[:id])
  end

  # POST /poll_answers
  # POST /poll_answers.json
  def create
    @poll_answer = PollAnswer.new(params[:poll_answer])

    respond_to do |format|
      if @poll_answer.save
        format.html { redirect_to @poll_answer, notice: 'Poll answer was successfully created.' }
        format.json { render json: @poll_answer, status: :created, location: @poll_answer }
      else
        format.html { render action: "new" }
        format.json { render json: @poll_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /poll_answers/1
  # PUT /poll_answers/1.json
  def update
    @poll_answer = PollAnswer.find(params[:id])

    respond_to do |format|
      if @poll_answer.update_attributes(params[:poll_answer])
        format.html { redirect_to @poll_answer, notice: 'Poll answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @poll_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poll_answers/1
  # DELETE /poll_answers/1.json
  def destroy
    @poll_answer = PollAnswer.find(params[:id])
    @poll_answer.destroy

    respond_to do |format|
      format.html { redirect_to poll_answers_url }
      format.json { head :no_content }
    end
  end
end
