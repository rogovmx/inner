class EditsubjsController < ApplicationController
    before_filter :adm_authorize
  layout 'office11s'
  # GET /editsubjs
  # GET /editsubjs.xml
 def usr
@usr=Office1.find_by_id(session[:user_id])
  end

  def index
    usr
    @editsubjs = DeskSubj.find :all ,:order=>'id desc'
    #,:conditions=>['city=?',@usr.city]  
    @editsubjs = DeskSubj.find :all ,:order=>'id desc' if @usr.id==88
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @editsubjs }
    end
  end

  # GET /editsubjs/1
  # GET /editsubjs/1.xml
  def show
 redirect_to :controller=>'editsubjs'
#    @editsubj = DeskSubj2.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @editsubj }
#    end
  end

  # GET /editsubjs/new
  # GET /editsubjs/new.xml
  def new
    @editsubj = DeskSubj.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @editsubj }
    end
  end

  # GET /editsubjs/1/edit
  def edit
    @editsubj = DeskSubj.find(params[:id])
  end

  # POST /editsubjs
  # POST /editsubjs.xml
  def create
    @editsubj = DeskSubj.new(params[:editsubj])

    respond_to do |format|
      if @editsubj.save
        format.html { redirect_to(:controller=>'editsubjs', :notice => 'DeskSubj2 was successfully created.') }
        format.xml  { render :xml => @editsubj, :status => :created, :location => @editsubj }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @editsubj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /editsubjs/1
  # PUT /editsubjs/1.xml
  def update
    @editsubj = DeskSubj.find(params[:id])

    respond_to do |format|
      if @editsubj.update_attributes(params[:editsubj])
        format.html { redirect_to(:controller=>'editsubjs', :notice => 'DeskSubj2 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @editsubj.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /editsubjs/1
  # DELETE /editsubjs/1.xml
  def destroy
    @editsubj = DeskSubj.find(params[:id])
    @editsubj.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.xml  { head :ok }
    end
  end

    def dd
    @editsubj = DeskSubj.find(params[:id])
    @editsubj.destroy
    redirect_to :back

  end

end
