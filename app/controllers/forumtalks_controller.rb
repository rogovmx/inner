class ForumtalksController < ApplicationController
  layout 'desk'
  before_filter :adm_authorize , :except => ['index' , 'create']

  def index
    curs
    usr
    @forumtheme = Forumtheme.find(params[:theme])
    if admin?
      @forumtalks = @forumtheme.forumtalk.sort { |a, b| b.created_at <=> a.created_at }
    else
    @forumtalks = @forumtheme.forumtalk.find_all{|m| m.vis }.sort { |a, b| b.created_at <=> a.created_at }
    end
   
    @forumtalk = Forumtalk.new

  end

#  def show
#    redirect_to :action=>'index' , :theme => $back
#  end



  def edit
    curs
    @forumtalk = Forumtalk.find(params[:id])
    @forumtheme = @forumtalk.forumtheme
  end


  def create
    @forumtalk = Forumtalk.new(params[:forumtalk])

    respond_to do |format|
      if @forumtalk.save
        format.html { redirect_to :controller => 'forumtalks' , :action => 'index' , :theme => @forumtalk.forumtheme_id }
        format.xml  { render :xml => @forumtalk, :status => :created, :location => @forumtalk }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @forumtalk.errors, :status => :unprocessable_entity }
      end
    end
  end



  def update
    @forumtalk = Forumtalk.find(params[:id])

    respond_to do |format|
      if @forumtalk.update_attributes(params[:forumtalk])
        format.html { redirect_to(:controller => 'forumtalks' , :theme =>@forumtalk.forumtheme.id) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @forumtalk.errors, :status => :unprocessable_entity }
      end
    end
  end


  def destr
    @forumtalk = Forumtalk.find(params[:id])
    $back = @forumtalk.forumtheme_id
    @forumtalk.destroy

    redirect_to :action=>'index' , :theme => $back
  end
  

end
