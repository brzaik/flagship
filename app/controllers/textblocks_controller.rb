class TextblocksController < ApplicationController
  # GET /textblocks
  # GET /textblocks.xml
  def index
    @textblocks = Textblock.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @textblocks }
    end
  end

  # GET /textblocks/1
  # GET /textblocks/1.xml
  def show
    @textblock = Textblock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @textblock }
    end
  end

  # GET /textblocks/new
  # GET /textblocks/new.xml
  def new
    @textblock = Textblock.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @textblock }
    end
  end

  # GET /textblocks/1/edit
  def edit
    @textblock = Textblock.find(params[:id])
  end

  # POST /textblocks
  # POST /textblocks.xml
  def create
    @textblock = Textblock.new(params[:textblock])

    respond_to do |format|
      if @textblock.save
        format.html { redirect_to(@textblock, :notice => 'Textblock was successfully created.') }
        format.xml  { render :xml => @textblock, :status => :created, :location => @textblock }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @textblock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /textblocks/1
  # PUT /textblocks/1.xml
  def update
    @textblock = Textblock.find(params[:id])

    respond_to do |format|
      if @textblock.update_attributes(params[:textblock])
        format.html { redirect_to(@textblock, :notice => 'Textblock was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @textblock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /textblocks/1
  # DELETE /textblocks/1.xml
  def destroy
    @textblock = Textblock.find(params[:id])
    @textblock.destroy

    respond_to do |format|
      format.html { redirect_to(textblocks_url) }
      format.xml  { head :ok }
    end
  end
end
