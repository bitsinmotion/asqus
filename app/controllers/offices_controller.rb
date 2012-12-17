class OfficesController < ApplicationController

  def find_polity  
    params.each do |name, value|  
      if name =~ /(.+)_id$/  
        return $1.classify.constantize.find(value)  
      end  
    end  
    nil  
  end  



  # GET /offices
  # GET /offices.json

  def index

    polity_type = params[:polity_type]
    polity_id = params[:polity_id]
        
    if (polity_type.nil?)
      @offices = Office.all
    else
      @polity =  eval(polity_type).find(polity_id) 
      @offices = Office.where( :polity_type => polity_type, :polity_id => polity_id )
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offices }
    end
  end

# todo: use this code instead once nested resource routing straightened out
#  def index
#    @polity = find_polity
#    @offices = @polity.offices
#
#    respond_to do |format|
#      format.html # index.html.erb
#      format.json { render json: @offices }
#    end
#  end

  # GET /offices/1
  # GET /offices/1.json
  def show
    @office = Office.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @office }
    end
  end

  # GET /offices/new
  # GET /offices/new.json
  def new


    @office = Office.new
    @office.polity_type = params[:polity_type]
    @office.polity_id = params[:polity_id]
    
    @office_types = OfficeType.where( :polity_type => params[:polity_type] )

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @office }
    end
  end

  # GET /offices/1/edit
  def edit

    @office = Office.find(params[:id])
    @office_types = OfficeType.where( :polity_type => @office.polity_type )

  end

  # POST /offices
  # POST /offices.json
  def create
    @office = Office.new(params[:office])

    respond_to do |format|
      if @office.save
        format.html { redirect_to @office, notice: 'Office was successfully created.' }
        format.json { render json: @office, status: :created, location: @office }
      else
        format.html { render action: "new" }
        format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /offices/1
  # PUT /offices/1.json
  def update
    @office = Office.find(params[:id])

    respond_to do |format|
      if @office.update_attributes(params[:office])
        format.html { redirect_to @office, notice: 'Office was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offices/1
  # DELETE /offices/1.json
  def destroy
    @office = Office.find(params[:id])
    @office.destroy

    respond_to do |format|
      format.html { redirect_to offices_url }
      format.json { head :no_content }
    end
  end
end
