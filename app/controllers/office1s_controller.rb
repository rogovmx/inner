class Office1sController < ApplicationController
  before_filter :adm_authorize

  layout 'office11s'

  # GET /Office1s'
  # GET /Office1s.xml
  def usr
@usr=Office1.find_by_id(session[:user_id])
  end


  def index

    usr
    @alf = Office1.find_by_sql(["select distinct last_name from office1s where last_name is not NULL and not(last_name like ' ') order by last_name asc"])
    @alf.map!{|a| a.last_name[0,2]}
    @alf.uniq!
    if params[:letter]
    @letter = params[:letter]
    else
    @letter = "А"
    end


    #@office1s = Office1.find :all , :conditions=>['city=? and last_name like ? ', @usr.city, @letter + '%'] , :order=>'last_name'
     @office1s = Office1.find :all , :conditions=>['last_name like ? ', @letter + '%'] , :order=>'last_name' #if @usr.id == 88 or @usr.id == 37
     @dep1=Dep1.all
     @otdel1=Otdel1.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @office1s }
      format.xls{ send_data @office1s.to_xls}
      #format.pdf{ send_data render_to_pdf({:action=>'index.rpdf' , :layout=>'office11s'})}
    end
  end

  # GET /Office1s/1
  # GET /Office1s/1.xml
  def show
    redirect_to :action=>'index'
#    @office1 = Office1.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @office1 }
#    end
  end

  # GET /Office1s/new
  # GET /Office1s/new.xml
  def new
    usr
         @dep1=Dep1.all
     @otdel1=Otdel1.all

    @office1 = Office1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @office1 }
    end
  end

  # GET /Office1s/1/edit
  def edit
    usr
    @office1 = Office1.find(params[:id])
    @dep1=Dep1.all
    @otdel1=Otdel1.all
  end

  # POST /Office1s
  # POST /Office1s.xml
  def create
    usr
    @office1 = Office1.new(params[:office1])

    respond_to do |format|
      if @office1.save
        format.html { redirect_to(:action=>'index' , :letter=>@office1.last_name[0,2]) }
        format.xml  { render :xml => @office1, :status => :created, :location => @office1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @office1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Office1s/1
  # PUT /Office1s/1.xml
  def update
    usr
    @office1 = Office1.find(params[:id])
    @dep1=Dep1.all
    @otdel1=Otdel1.all
    respond_to do |format|
      if @office1.update_attributes(params[:office1])
        format.html { redirect_to(:action=>'index' , :letter=>@office1.last_name[0,2]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @office1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Office1s/1
  # DELETE /Office1s/1.xml

 
    def del
    @office1 = Office1.find(params[:id])
    @office1.destroy

    respond_to do |format|
      format.html { redirect_to(office1s_url) }
      format.xml  { head :ok }
    end
  end

  def destroy
    @office1 = Office1.find(params[:id])
    @office1.destroy

    respond_to do |format|
      format.html { redirect_to(office1s_url) }
      format.xml  { head :ok }
    end
  end
end
