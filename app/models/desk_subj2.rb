class DeskSubj2 < ActiveRecord::Base
  has_many :desk_answ
  belongs_to :picture
end
