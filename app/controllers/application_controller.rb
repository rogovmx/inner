# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password


def usr
 session[:user_id] = cookies[:login]  if cookies[:login]
@usr=Office1.find_by_id(session[:user_id])
end

def curs
#serv = DailyInfoSoap.new
## Формируем запрос
#request = GetCursOnDateXML.new(DateTime.now)
## Отправляем запрос на сервер и получаем ответ
#response = serv.getCursOnDateXML(request)
## Анализируем ответ и выводим результат
#@items = response.getCursOnDateXMLResult.valuteData.valuteCursOnDate

end

  private

  def authorize
    unless Office1.find(session[:user_id])
      redirect_to  :controller=>'login'
    end
  end
  
    def adm_authorize
    @adm = Office1.find(session[:user_id])
    if @adm==nil or @adm.role != 'redaktor'
      redirect_to  :controller=>'desk_subjs'
    end

  end

  def admin?
        @adm = Office1.find_by_id(session[:user_id])
    if @adm==nil or @adm.role != 'redaktor'
      return false
    else
      return true
    end
  end



end
