class RumsController < ApplicationController
  # GET /rums
  # GET /rums.json
  def index
    @rums = Rum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rums }
    end
  end
  
  layout :choose_layout
  
  # GET /rums/1
  # GET /rums/1.json
  def show
    @rum = Rum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rum }
    end
  end

  # GET /rums/new
  # GET /rums/new.json
  def new
    @rum = Rum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rum }
    end
  end

  # GET /rums/1/edit
  def edit
    @rum = Rum.find(params[:id])
  end

  # POST /rums
  # POST /rums.json
  def create
    @rum = Rum.new(params[:rum])

    respond_to do |format|
      if @rum.save
        format.html { redirect_to @rum, notice: 'Rum was successfully created.' }
        format.json { render json: @rum, status: :created, location: @rum }
      else
        format.html { render action: "new" }
        format.json { render json: @rum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rums/1
  # PUT /rums/1.json
  def update
    @rum = Rum.find(params[:id])

    respond_to do |format|
      if @rum.update_attributes(params[:rum])
        format.html { redirect_to @rum, notice: 'Rum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rums/1
  # DELETE /rums/1.json
  def destroy
    @rum = Rum.find(params[:id])
    @rum.destroy

    respond_to do |format|
      format.html { redirect_to rums_url }
      format.json { head :ok }
    end
  end
  
  private
  def choose_layout
    unless ['index', 'new','create', 'destroy', 'edit'].include? action_name
      "testcase_#{@rum.id}"
    else
      "application"
    end
  end
end
