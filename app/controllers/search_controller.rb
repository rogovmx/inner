class SearchController < ApplicationController
 
  layout 'index'

  def index
     search=params[:search]
     @text=search

      @s_office=Office1.find :all, :conditions=>["(name like ? or last_name like ?  or patronimic like ?  or job like ?   or phone like ? or mail like ?  )",'%'+search+'%','%'+search+'%','%'+search+'%','%'+search+'%','%'+search+'%','%'+search+'%']
      @s_desk=DeskSubj2.find :all , :conditions=>["(subj like ? or s_text like ?)",'%'+search+'%','%'+search+'%']
     # if not(@s_office) and not (@s_desk)
  end

end
