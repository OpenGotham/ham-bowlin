class PatronsController < ApplicationController
  # GET /patrons
  # GET /patrons.xml
  def index
    @patrons = Patron.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @patrons }
    end
  end

  # GET /patrons/1
  # GET /patrons/1.xml
  def show
    @patron = Patron.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @patron }
    end
  end

  # GET /patrons/new
  # GET /patrons/new.xml
  def new
    @patron = Patron.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @patron }
    end
  end

  # GET /patrons/1/edit
  def edit
    @patron = Patron.find(params[:id])
  end

  # POST /patrons
  # POST /patrons.xml
  def create
    @patron = Patron.new(params[:patron])

    respond_to do |format|
      if @patron.save
        format.html { redirect_to(@patron, :notice => 'Patron was successfully created.') }
        format.xml  { render :xml => @patron, :status => :created, :location => @patron }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @patron.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /patrons/1
  # PUT /patrons/1.xml
  def update
    @patron = Patron.find(params[:id])

    respond_to do |format|
      if @patron.update_attributes(params[:patron])
        format.html { redirect_to(@patron, :notice => 'Patron was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @patron.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /patrons/1
  # DELETE /patrons/1.xml
  def destroy
    @patron = Patron.find(params[:id])
    @patron.destroy

    respond_to do |format|
      format.html { redirect_to(patrons_url) }
      format.xml  { head :ok }
    end
  end
end
