class WorksController < ApplicationController
  before_filter :adm_authorize
    layout 'office11s'
  # GET /works
  # GET /works.xml
  def index
    @works = Work.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @works }
    end
  end

  # GET /works/1
  # GET /works/1.xml
  def show
    redirect_to :controller=>'works'
#    @work = Work.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @work }
#    end
  end

  # GET /works/new
  # GET /works/new.xml
  def new
    redirect_to :controller=>'works'
#    @work = Work.new
#
#    respond_to do |format|
#      format.html # new.html.erb
#      format.xml  { render :xml => @work }
#    end
  end

  # GET /works/1/edit
  def edit
    @work = Work.find(params[:id])
  end

  # POST /works
  # POST /works.xml
  def create
    @work = Work.new(params[:work])

    respond_to do |format|
      if @work.save
        format.html { redirect_to(@work, :notice => 'Work was successfully created.') }
        format.xml  { render :xml => @work, :status => :created, :location => @work }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @work.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /works/1
  # PUT /works/1.xml
  def update
    @work = Work.find(params[:id])

    respond_to do |format|
      if @work.update_attributes(params[:work])
        format.html { redirect_to(@work, :notice => 'Work was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @work.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1
  # DELETE /works/1.xml
  def destroy
    redirect_to :controller=>'works'
#    @work = Work.find(params[:id])
#    @work.destroy
#
#    respond_to do |format|
#      format.html { redirect_to(works_url) }
#      format.xml  { head :ok }
#    end
  end
end
