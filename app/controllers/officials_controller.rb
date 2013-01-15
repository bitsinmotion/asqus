class OfficialsController < ApplicationController
  # GET /officials
  # GET /officials.json
  def index
    @officials = Official.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @officials }
    end
  end

  # GET /officials/1
  # GET /officials/1.json
  def show
    @official = Official.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @official }
    end
  end

end
