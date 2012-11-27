class PollQuestionsController < ApplicationController
  # GET /poll_questions
  # GET /poll_questions.json
  def index
    @poll_questions = PollQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poll_questions }
    end
  end

  # GET /poll_questions/1
  # GET /poll_questions/1.json
  def show
    @poll_question = PollQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poll_question }
    end
  end

  # GET /poll_questions/new
  # GET /poll_questions/new.json
  def new
    @poll_question = PollQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll_question }
    end
  end

  # GET /poll_questions/1/edit
  def edit
    @poll_question = PollQuestion.find(params[:id])
  end

  # POST /poll_questions
  # POST /poll_questions.json
  def create
    @poll_question = PollQuestion.new(params[:poll_question])

    respond_to do |format|
      if @poll_question.save
        format.html { redirect_to @poll_question, notice: 'Poll question was successfully created.' }
        format.json { render json: @poll_question, status: :created, location: @poll_question }
      else
        format.html { render action: "new" }
        format.json { render json: @poll_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /poll_questions/1
  # PUT /poll_questions/1.json
  def update
    @poll_question = PollQuestion.find(params[:id])

    respond_to do |format|
      if @poll_question.update_attributes(params[:poll_question])
        format.html { redirect_to @poll_question, notice: 'Poll question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @poll_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poll_questions/1
  # DELETE /poll_questions/1.json
  def destroy
    @poll_question = PollQuestion.find(params[:id])
    @poll_question.destroy

    respond_to do |format|
      format.html { redirect_to poll_questions_url }
      format.json { head :no_content }
    end
  end
end
