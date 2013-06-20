class ATestsController < ApplicationController
  # GET /a_tests
  # GET /a_tests.xml
  def price
      
  end

  def del
    @all = Cat1.all
       @del=[]
    for cat in @all do
      @tov=Nprice1.find :first , :conditions=>['k1c like ?',cat.k1c]

       unless @tov
         @del<<cat if cat.vis==1
         cat.vis=0
         cat.save
       end

    end


  end


  def bonus
    @photo=Bfoto1.all

    @photo.each do |photo|
      @bonus=Bonus3.find_by_id(photo.itemid)
      if @bonus
      @bonus.photo = photo.photo
      @bonus.save
      end
    end
  end

  def mm
#@mails=User.find_by_sql(["select distinct mail from users where soglasen=1 and mail like ? and NOT(mail like ?) and NOT(mail like ?)", '%'+'@'+'%' , '%'+' '+'%' , '%'+'-'+'%' ])
@mails=User.find_by_sql(["select distinct mail from users where mail like ? ", '%'+'mrogov'+'%'])


@mails.each do |user|


#mail = Mailer.create_mailer
#mail.set_content_type("multipart/related")
Mailer.deliver_mailer(user)
sleep(1)
end
render :text=>'<h1 style="color: red" >Рассылка завершена! </h1>'
#redirect_to :back
  end

  def raspr
     @rrr=Raspr1.find :all
  end

  def water
    @allw=Worder.find :all
  end

  def userid
    #render :text=>params[:user_id][:userid]
  
    session[:user_id]=params[:user_id][:userid]
    redirect_to :action=>'index'
  end


  def index
 
    @a_tests = ATest.find(:all)
    @vu=VictorUsers.find(:all)
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @a_tests }
    end
  end

  # GET /a_tests/1
  # GET /a_tests/1.xml
  def show
    @a_test = ATest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @a_test }
    end
  end

  # GET /a_tests/new
  # GET /a_tests/new.xml
  def new
    @a_test = ATest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @a_test }
    end
  end

  # GET /a_tests/1/edit
  def edit
    @a_test = ATest.find(params[:id])
  end

  # POST /a_tests
  # POST /a_tests.xml
  def create
    @a_test = ATest.new(params[:a_test])

    respond_to do |format|
      if @a_test.save
        flash[:notice] = 'ATest was successfully created.'
        format.html { redirect_to(@a_test) }
        format.xml  { render :xml => @a_test, :status => :created, :location => @a_test }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @a_test.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /a_tests/1
  # PUT /a_tests/1.xml
  def update
    @a_test = ATest.find(params[:id])

    respond_to do |format|
      if @a_test.update_attributes(params[:a_test])
        flash[:notice] = 'ATest was successfully updated.'
        format.html { redirect_to(@a_test) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @a_test.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /a_tests/1
  # DELETE /a_tests/1.xml
  def destroy
    @a_test = ATest.find(params[:id])
    @a_test.destroy

    respond_to do |format|
      format.html { redirect_to(a_tests_url) }
      format.xml  { head :ok }
    end
  end


   private

   def authorize
     unless User.find_by_id(session[:user_id])
       session[:original_uri]=request.request_uri

     redirect_to(:action=>'index')
     end
   end



end
