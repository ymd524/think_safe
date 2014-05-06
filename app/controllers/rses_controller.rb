class RsesController < ApplicationController
  # GET /rses
  # GET /rses.xml
  def index
    @rses = Rsis.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rses }
    end
  end

  # GET /rses/1
  # GET /rses/1.xml
  def show
    @rse = Rsis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rse }
    end
  end

  # GET /rses/new
  # GET /rses/new.xml
  def new
    @rse = Rsis.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rse }
    end
  end

  # GET /rses/1/edit
  def edit
    @rse = Rsis.find(params[:id])
  end

  # POST /rses
  # POST /rses.xml
  def create
    @rse = Rsis.new(params[:rse])

    respond_to do |format|
      if @rse.save
        format.html { redirect_to(@rse, :notice => 'Rsis was successfully created.') }
        format.xml  { render :xml => @rse, :status => :created, :location => @rse }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rses/1
  # PUT /rses/1.xml
  def update
    @rse = Rsis.find(params[:id])

    respond_to do |format|
      if @rse.update_attributes(params[:rse])
        format.html { redirect_to(@rse, :notice => 'Rsis was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rses/1
  # DELETE /rses/1.xml
  def destroy
    @rse = Rsis.find(params[:id])
    @rse.destroy

    respond_to do |format|
      format.html { redirect_to(rses_url) }
      format.xml  { head :ok }
    end
  end
end
