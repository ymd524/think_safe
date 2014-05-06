class VolumesController < ApplicationController
  # GET /volumes
  # GET /volumes.xml
  def index
    @volumes = Volume.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @volumes }
    end
  end

  # GET /volumes/1
  # GET /volumes/1.xml
  def show
    @volume = Volume.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @volume }
    end
  end

  # GET /volumes/new
  # GET /volumes/new.xml
  def new
    @volume = Volume.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @volume }
    end
  end

  # GET /volumes/1/edit
  def edit
    @volume = Volume.find(params[:id])
  end

  # POST /volumes
  # POST /volumes.xml
  def create
    @volume = Volume.new(params[:volume])

    respond_to do |format|
      if @volume.save
        format.html { redirect_to(@volume, :notice => 'Volume was successfully created.') }
        format.xml  { render :xml => @volume, :status => :created, :location => @volume }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @volume.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /volumes/1
  # PUT /volumes/1.xml
  def update
    @volume = Volume.find(params[:id])

    respond_to do |format|
      if @volume.update_attributes(params[:volume])
        format.html { redirect_to(@volume, :notice => 'Volume was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @volume.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /volumes/1
  # DELETE /volumes/1.xml
  def destroy
    @volume = Volume.find(params[:id])
    @volume.destroy

    respond_to do |format|
      format.html { redirect_to(volumes_url) }
      format.xml  { head :ok }
    end
  end
end
