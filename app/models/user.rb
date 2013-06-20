class User < ActiveRecord::Base


    validates_presence_of     :name,:message=>"Поле Логин не может быть пустым."

  validates_uniqueness_of   :name ,:message=>"Такой логин уже есть.Попробуйте придумать другой логин"

  attr_accessor :password_confirmation
  validates_confirmation_of :password ,:message=>"Пароли не совпадают."


    def self.authenticate(name, password)
    user = self.find_by_name(name)
    pass = self.find_by_password(password)
    
    if user and pass
         user
    else
       user = nil
   end
 end


end
