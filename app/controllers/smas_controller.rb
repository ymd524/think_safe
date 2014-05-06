class SmasController < ApplicationController
  # GET /smas
  # GET /smas.xml
  def index
    @smas = Sma.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @smas }
    end
  end

  # GET /smas/1
  # GET /smas/1.xml
  def show
    @sma = Sma.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sma }
    end
  end

  # GET /smas/new
  # GET /smas/new.xml
  def new
    @sma = Sma.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sma }
    end
  end

  # GET /smas/1/edit
  def edit
    @sma = Sma.find(params[:id])
  end

  # POST /smas
  # POST /smas.xml
  def create
    @sma = Sma.new(params[:sma])

    respond_to do |format|
      if @sma.save
        format.html { redirect_to(@sma, :notice => 'Sma was successfully created.') }
        format.xml  { render :xml => @sma, :status => :created, :location => @sma }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sma.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /smas/1
  # PUT /smas/1.xml
  def update
    @sma = Sma.find(params[:id])

    respond_to do |format|
      if @sma.update_attributes(params[:sma])
        format.html { redirect_to(@sma, :notice => 'Sma was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sma.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /smas/1
  # DELETE /smas/1.xml
  def destroy
    @sma = Sma.find(params[:id])
    @sma.destroy

    respond_to do |format|
      format.html { redirect_to(smas_url) }
      format.xml  { head :ok }
    end
  end
end
