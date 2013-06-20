
module ApplicationHelper
  
  def user_id
     @user=Office1.find_by_id(session[:user_id])
     if @user
       return @user.id
     else
       return 0
     end
  end

  
  
  def user_name
    @user=Office1.find_by_id(session[:user_id])
    if @user
    return 'Здравствуйте '+ @user.name
    else
    return ''
    end
  end

  def login?
    @usr=Office1.find_by_id(session[:user_id])
    if @usr
      return true
    else
      return false
    end

  end

  def admin?
    @usr=Office1.find_by_id(session[:user_id])
    if @usr and @usr.role == 'redaktor'
      return true
    else
      return false
    end

  end



   
end
