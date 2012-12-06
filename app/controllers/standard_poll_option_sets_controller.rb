class StandardPollOptionSetsController < ApplicationController
  # GET /standard_poll_option_sets
  # GET /standard_poll_option_sets.json
  def index
    @standard_poll_option_sets = StandardPollOptionSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @standard_poll_option_sets }
    end
  end

  # GET /standard_poll_option_sets/1
  # GET /standard_poll_option_sets/1.json
  def show
    @standard_poll_option_set = StandardPollOptionSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @standard_poll_option_set }
    end
  end

  # GET /standard_poll_option_sets/new
  # GET /standard_poll_option_sets/new.json
  def new
    @standard_poll_option_set = StandardPollOptionSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @standard_poll_option_set }
    end
  end

  # GET /standard_poll_option_sets/1/edit
  def edit
    @standard_poll_option_set = StandardPollOptionSet.find(params[:id])
  end

  # POST /standard_poll_option_sets
  # POST /standard_poll_option_sets.json
  def create
    @standard_poll_option_set = StandardPollOptionSet.new(params[:standard_poll_option_set])

    respond_to do |format|
      if @standard_poll_option_set.save
        format.html { redirect_to @standard_poll_option_set, notice: 'Standard poll option set was successfully created.' }
        format.json { render json: @standard_poll_option_set, status: :created, location: @standard_poll_option_set }
      else
        format.html { render action: "new" }
        format.json { render json: @standard_poll_option_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /standard_poll_option_sets/1
  # PUT /standard_poll_option_sets/1.json
  def update
    @standard_poll_option_set = StandardPollOptionSet.find(params[:id])

    respond_to do |format|
      if @standard_poll_option_set.update_attributes(params[:standard_poll_option_set])
        format.html { redirect_to @standard_poll_option_set, notice: 'Standard poll option set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @standard_poll_option_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standard_poll_option_sets/1
  # DELETE /standard_poll_option_sets/1.json
  def destroy
    @standard_poll_option_set = StandardPollOptionSet.find(params[:id])
    @standard_poll_option_set.destroy

    respond_to do |format|
      format.html { redirect_to standard_poll_option_sets_url }
      format.json { head :no_content }
    end
  end
end
