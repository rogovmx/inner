class HappyController < ApplicationController
   layout 'vvk_fw'

def user
    @user=User.find_by_id(session[:user_id])
  end

 def cart
     user
     if @user
     @cart=Cart.find :all,:conditions=>['User_id=? or sesion_id=?',@user.id,session.session_id]
     @cart_count=Cart.count :conditions=>['User_id=? or sesion_id=?',@user.id,session.session_id]
     else
        @cart=Cart.find :all,:conditions=>[' sesion_id=?',session.session_id]
        @cart_count=Cart.count :conditions=>['sesion_id=?',session.session_id]
     end
     @cart_sum= 0

     @cart.each do |cart|
       @cart_sum += cart.price*cart.quantity if cart.price
     end

     end

def index
user
cart
end

end
