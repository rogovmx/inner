class ForumthemesController < ApplicationController
  # GET /forumthemes
  # GET /forumthemes.xml
  layout 'desk'
  def index
   curs

    @forum = Forumroot.find(params[:id])
    if admin?
    @forumthemes = @forum.forumtheme
    else
    @forumthemes = Forumroot.find(params[:id]).forumtheme.find_all{|m| m.vis }
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @forumthemes }
    end
  end



  # GET /forumthemes/new
  # GET /forumthemes/new.xml
  def new
    curs
    @forumtheme = Forumtheme.new
    @forumtheme.forumroot_id = params[:root]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @forumtheme }
    end
  end

  # GET /forumthemes/1/edit
  def edit
    curs
    @forumtheme = Forumtheme.find(params[:id])
  end

  # POST /forumthemes
  # POST /forumthemes.xml
  def create
    @forumtheme = Forumtheme.new(params[:forumtheme])

    respond_to do |format|
      if @forumtheme.save
        format.html { redirect_to(:action => 'index' , :id => @forumtheme.forumroot_id) }
        format.xml  { render :xml => @forumtheme, :status => :created, :location => @forumtheme }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @forumtheme.errors, :status => :unprocessable_entity }
      end
      flash[:notice] = 'Тема создана'
    end

  end

  # PUT /forumthemes/1
  # PUT /forumthemes/1.xml
  def update
    @forumtheme = Forumtheme.find(params[:id])

    respond_to do |format|
      if @forumtheme.update_attributes(params[:forumtheme])
        format.html { redirect_to(:action => 'index' , :id => @forumtheme.forumroot_id) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @forumtheme.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /forumthemes/1
  # DELETE /forumthemes/1.xml
  def destr
    @forumtheme = Forumtheme.find(params[:id])
    @forumtheme.destroy

    respond_to do |format|
      format.html { redirect_to(:action => 'index' , :id =>@forumtheme.forumroot_id ) }
      format.xml  { head :ok }
    end
  end
end
