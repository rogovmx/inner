class Status1sController < ApplicationController
  before_filter :adm_authorize
  layout 'office11s'
  # GET /status1s
  # GET /status1s.xml
  def index
    @status1s = Status1.find :all , :order=>'status'

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @status1s }
    end
  end

  # GET /status1s/1
  # GET /status1s/1.xml
  def show
    redirect_to :controller=>'status1s'
#    @status1 = Status1.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @status1 }
#    end
  end

  # GET /status1s/new
  # GET /status1s/new.xml
  def new
    @status1 = Status1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @status1 }
    end
  end

  # GET /status1s/1/edit
  def edit
    @status1 = Status1.find(params[:id])
  end

  # POST /status1s
  # POST /status1s.xml
  def create
    @status1 = Status1.new(params[:status1])

    respond_to do |format|
      if @status1.save
        format.html { redirect_to(@status1, :notice => 'Status1 was successfully created.') }
        format.xml  { render :xml => @status1, :status => :created, :location => @status1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @status1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /status1s/1
  # PUT /status1s/1.xml
  def update
    @status1 = Status1.find(params[:id])

    respond_to do |format|
      if @status1.update_attributes(params[:status1])
        format.html { redirect_to(@status1, :notice => 'Status1 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @status1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /status1s/1
  # DELETE /status1s/1.xml
  def del
    @status1 = Status1.find(params[:id])
    @status1.destroy

    respond_to do |format|
      format.html { redirect_to(status1s_url) }
      format.xml  { head :ok }
    end
  end


  def destroy
    @status1 = Status1.find(params[:id])
    @status1.destroy

    respond_to do |format|
      format.html { redirect_to(status1s_url) }
      format.xml  { head :ok }
    end
  end
end
