class LoginController < ApplicationController
  layout 'office11s' , :only=>[:add_user]
  layout 'log' , :only=>[:login, :pass]
  
  def add_user
    @usr=Office1.find(session[:user_id])
    @user=Office1.new(params[:user]) if params[:user]
    if request.post? and @user.save
      flash.now[:notice] = "Пользователь #{@user.login} зарегистрирован"
     # @user = Office1.new
     redirect_to :controller=>'office1s'
    end
    render :layout=>'office11s'
  end

  def login

    session[:user_id] = nil
   # if request.post?
   if params[:login] and params[:password]

      user = Office1.authenticate(params[:login], params[:password])
      if user
        
        session[:user_id] = user.id
       # render :text=>session[:user_id]
        #uri=session[:original_uri]

        #redirect_to(uri || {:controller=>'desk_subjs'})
        redirect_to :controller=>'desk' , :action=>'index'
        @flash1='All ok'
      else
        @flash1='Не совсем удачые логин или пароль, попробуй еще )))))))))))'
          flash[:notice] = "Не совсем удачые логин или пароль, попробуй еще )))))))))))"

        end
    end
 
  end

   def logout
    session[:original_uri]=nil
    session[:user_id] = nil
    flash[:notice] = "Сессия закрыта"
    redirect_to(:controller => 'desk_subjs')
  end

  def index
    redirect_to :action=>'login'
  end

  def delete_user
  end

  def list_users
  end


  def pass
    @mail=Office1.find :first ,:conditions=>["mail=?",params[:mail]] if params[:mail]
    
  end

def  chng_pass

   @user=Office1.find(params[:id])

      rnd=rand(999999999999999999999999999999999999999999)
      conf=Conf.new
      conf.office_id=@user.id
      conf.conf=rnd
      conf.save
      mess=Mail1.pass(@user, rnd)
       mess.deliver
      #Mailer.deliver_pass(@user.mail,@user.name,rnd)
     # redirect_to :controller=>'eml',:action=>'smp'

end

def confirm
  rnd=params[:confirm]
    confirms = Conf.find(:first,:conditions=>["conf=?",rnd])
    if confirms==nil
      redirect_to :controller=>'login'
    else
      user_id=confirms.office_id
      user=Office1.find(user_id)
     
      confirms.destroy
       session[:user_id] = user.id
      redirect_to :controller=>'login' , :action=>'edit'
    end
  end


def edit
@usr=Office1.find(session[:user_id])
@office1=Office1.find(session[:user_id])
end

def save
 @office1=Office1.find(session[:user_id])
 @office1.update_attributes(params[:office1])
 redirect_to :controller=>'login'
end

end
