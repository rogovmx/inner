class Office1 < ActiveRecord::Base
  has_many :forumtheme
  has_many :forumtalk
  
#  validates :login ,:presence =>true
#
#  validates :login ,:uniqueness =>true
#
#
#  attr_accessor :password_confirmation
#  validates :password ,:confirmation =>true
#
#  def validate
#    errors.add_to_base("Пароль не введен") if hashed_password.blank?
#  end
#
#  def self.authenticate(login, password)
#    user = self.find_by_login(login)
#    if user
#      expected_password = encrypted_password(password, user.salt)
#      if user.hashed_password != expected_password
#        user = nil
#      end
#    end
#    user
#  end
#
#  def password
#    @password
#  end
#
#  def password=(pwd)
#    @password = pwd
#    create_new_salt
#    self.hashed_password = Office1.encrypted_password(self.password, self.salt)
#  end
#  #END:accessors
#
##  START:after_destroy
##  def after_destroy
##    if User.count.zero?
##      raise "Can't delete last user"
##    end
##  end
##  END:after_destroy
#
#  private
#
#  #START:create_new_salt
#  def create_new_salt
#    self.salt = self.object_id.to_s + rand.to_s
#  end
#  #END:create_new_salt
#
#  #START:encrypted_password
#  def self.encrypted_password(password, salt)
#    string_to_hash = password + "wibble" + salt
#    Digest::SHA2.hexdigest(string_to_hash)
#  end

end
