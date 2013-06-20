class Forumtheme < ActiveRecord::Base
  belongs_to :forumroot
  has_many :forumtalk
  belongs_to :office1
end
