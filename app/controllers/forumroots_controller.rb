class ForumrootsController < ApplicationController
 layout 'desk'

  def index
    curs
    @forumroots = Forumroot.all
   

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @forumroots }
    end
  end


  def new
    curs
    @forumroot = Forumroot.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @forumroot }
    end
  end

  # GET /forumroots/1/edit
  def edit
    curs
    @forumroot = Forumroot.find(params[:id])
  end

  # POST /forumroots
  # POST /forumroots.xml
  def create
    @forumroot = Forumroot.new(params[:forumroot])

    respond_to do |format|
      if @forumroot.save
        format.html { redirect_to(:action=> 'index', :notice => 'Раздел добавлен') }
        format.xml  { render :xml => @forumroot, :status => :created, :location => @forumroot }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @forumroot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /forumroots/1
  # PUT /forumroots/1.xml
  def update
    @forumroot = Forumroot.find(params[:id])

    respond_to do |format|
      if @forumroot.update_attributes(params[:forumroot])
        format.html { redirect_to(:action=> 'index', :notice => 'Раздел сохранен') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @forumroot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /forumroots/1
  # DELETE /forumroots/1.xml
  def destr
    @forumroot = Forumroot.find(params[:id])
    @forumroot.destroy

    respond_to do |format|
      format.html { redirect_to(:action => 'index') }
      format.xml  { head :ok }
    end
  end
end
