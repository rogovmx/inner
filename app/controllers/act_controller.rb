class ActController < ApplicationController
    before_filter :authorize
  layout 'search'
  def index
     @content=Statp.find :first, :conditions=>["title=?",'Акции']
  end

  def mans
    @content=Statp.find :first, :conditions=>["title=?",'10man']
  end

    def guest
    @content=Statp.find :first, :conditions=>["title=?",'guest']
  end
   def clean
    @content=Statp.find :first, :conditions=>["title=?",'clean']
  end

    def newman
    @content=Statp.find :first, :conditions=>["title=?",'newman']
  end
end
