class LanesController < ApplicationController
  # GET /lanes
  # GET /lanes.xml
  def index
    @lanes = Lane.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lanes }
    end
  end

  # GET /lanes/1
  # GET /lanes/1.xml
  def show
    @lane = Lane.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lane }
    end
  end

  # GET /lanes/new
  # GET /lanes/new.xml
  def new
    @lane = Lane.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lane }
    end
  end

  # GET /lanes/1/edit
  def edit
    @lane = Lane.find(params[:id])
  end

  # POST /lanes
  # POST /lanes.xml
  def create
    @lane = Lane.new(params[:lane])

    respond_to do |format|
      if @lane.save
        format.html { redirect_to(@lane, :notice => 'Lane was successfully created.') }
        format.xml  { render :xml => @lane, :status => :created, :location => @lane }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lane.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lanes/1
  # PUT /lanes/1.xml
  def update
    @lane = Lane.find(params[:id])

    respond_to do |format|
      if @lane.update_attributes(params[:lane])
        format.html { redirect_to(@lane, :notice => 'Lane was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lane.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lanes/1
  # DELETE /lanes/1.xml
  def destroy
    @lane = Lane.find(params[:id])
    @lane.destroy

    respond_to do |format|
      format.html { redirect_to(lanes_url) }
      format.xml  { head :ok }
    end
  end
end
