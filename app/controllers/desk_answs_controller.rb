class DeskAnswsController < ApplicationController
  # GET /desk_answs
  # GET /desk_answs.xml
  def index
    @desk_answs = DeskAnsw.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @desk_answs }
    end
  end

  # GET /desk_answs/1
  # GET /desk_answs/1.xml
  def show
    @desk_answ = DeskAnsw.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @desk_answ }
    end
  end

  # GET /desk_answs/new
  # GET /desk_answs/new.xml
  def new
    @desk_answ = DeskAnsw.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @desk_answ }
    end
  end

  # GET /desk_answs/1/edit
  def edit
    @desk_answ = DeskAnsw.find(params[:id])
  end

  # POST /desk_answs
  # POST /desk_answs.xml
  def create
    @desk_answ = DeskAnsw.new(params[:desk_answ])

    respond_to do |format|
      if @desk_answ.save
        flash[:notice] = 'DeskAnsw was successfully created.'
        format.html { redirect_to(@desk_answ) }
        format.xml  { render :xml => @desk_answ, :status => :created, :location => @desk_answ }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @desk_answ.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /desk_answs/1
  # PUT /desk_answs/1.xml
  def update
    @desk_answ = DeskAnsw.find(params[:id])

    respond_to do |format|
      if @desk_answ.update_attributes(params[:desk_answ])
        flash[:notice] = 'DeskAnsw was successfully updated.'
        format.html { redirect_to(@desk_answ) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @desk_answ.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /desk_answs/1
  # DELETE /desk_answs/1.xml
  def destroy
    @desk_answ = DeskAnsw.find(params[:id])
    @desk_answ.destroy

    respond_to do |format|
      format.html { redirect_to(desk_answs_url) }
      format.xml  { head :ok }
    end
  end
end
