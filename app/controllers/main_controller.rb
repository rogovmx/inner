class MainController < ApplicationController
  layout 'index'

 require 'iconv'


def usr
 session[:user_id] = cookies[:login]  if cookies[:login]
 @usr=Office1.find_by_id(session[:user_id])
end


    def login

    session[:user_id] = nil

   if params[:login]

      user = Office1.find :first , :conditions=>['mail=?',params[:login][:mail] ] if params[:login][:mail] !=nil and params[:login][:mail] !=''
      if user

        session[:user_id] = user.id
        @flash1='Вы успешно авторизовались'
        cookies[:login] = { :value => "#{user.id}" , :expires => 12.month.from_now.utc}
        redirect_to :controller=>'desk_subjs' , :action=>'index'
        
      else
        @flash1='не верный e-mail'
          flash[:notice] = "не верный e-mail"
          redirect_to '/'
       end
    end

  end

  def logout
    session[:original_uri]=nil
    session[:user_id] = nil
    flash[:notice] = "Сессия закрыта"
    cookies.delete(:login)
    redirect_to('/')
  end


  def album
    render :layout => 'albums'
  end



  def index
    @menu=1


  end
  
 def forum
  usr
  @menu=2
  @path='Форум'

  end

  def about
  @menu=2
  @path='о компании / '
  @path += ' о проекте' if params[:smenu] == '1'
  @path += ' миссия' if params[:smenu] == '11'
  @path += ' история' if params[:smenu] == '2'
  @path += ' наши ценности' if params[:smenu] == '3'
  @path += ' статьи о живом офисе' if params[:smenu] == '4'
  @path += ' наши достижения' if params[:smenu] == '5'
  end

  def letter
   @menu=2
   @path='о компании / '
   @path += ' наши достижения'
  end

  def sotrud
    usr
    @menu=4
  @path='сотрудники / '
  @path += ' алфавитный указатель' if params[:smenu] == '1'
  @path += ' структура компании' if params[:smenu] == '2'
  @path += ' структура и сотрудники' if params[:smenu] == '3'
  if params[:smenu] == '1' or params[:smenu] == nil
     @stuff=Office1.find_by_sql(["select distinct * from office1s where city=? and dekret = 0 order by last_name asc",1])
       @stuff2=Office1.find_by_sql(["select distinct last_name from office1s where city=?  and dekret = 0  order by last_name asc" , 1])
       @alf=[]
      @stuff2.each do |st|
       @alf << st.last_name[0,2]
      end
      @alfa=@alf.uniq
@quant = @alf.size
@col = (@quant/3) + 3


     @stuffm=Office1.find_by_sql(["select distinct * from office1s where city=?  and dekret = 0  order by last_name asc",2])
       @stuff2m=Office1.find_by_sql(["select distinct last_name from office1s where city=? and dekret = 0  order by last_name asc" , 2])
       @alfm=[]
      @stuff2m.each do |st|
       @alfm << st.last_name[0,2]
      end
      @alfam=@alfm.uniq
@quantm = @alfm.size
@colm = (@quantm/3) + 3


           @stufft=Office1.find_by_sql(["select distinct * from office1s where city=?  and dekret = 0  order by last_name asc",4])
       @stuff2t=Office1.find_by_sql(["select distinct last_name from office1s where city=? and dekret = 0  order by last_name asc" , 4])
       @alft=[]
      @stuff2t.each do |st|
       @alft << st.last_name[0,2]
      end
      @alfat=@alft.uniq
@quantt = @alft.size
@colt = (@quantt/3) + 3


      @stuffs=Office1.find_by_sql(["select distinct * from office1s where city=? and dekret = 0  order by last_name asc",3])
       @stuff2s=Office1.find_by_sql(["select distinct last_name from office1s where city=? and dekret = 0  order by last_name asc" , 3])
       @alfs=[]
      @stuff2s.each do |st|
       @alfs << st.last_name[0,2]
      end
      @alfas=@alfs.uniq
@quants = @alf.size
@cols = (@quants/3) + 3



  elsif params[:smenu] == '2' or params[:smenu] == '3'

#@departs = Office1.find_by_sql(["select distinct departament from office1s where city=? and (departament is not null) and not(departament='')",@usr.city])
@dep_prod = Office1.find_by_sql(["select distinct otdel1 from office1s where city=? and (dep1 is not null) and not(otdel1=15) and dep1=1 and dekret = 0 ",1])
@dep_obesp = Office1.find_by_sql(["select distinct otdel1 from office1s where city=? and (dep1 is not null) and not(otdel1=15) and dep1=2 and dekret = 0 ",1])
@dep_deyat = Office1.find_by_sql(["select distinct otdel1 from office1s where city=? and (dep1 is not null) and not(otdel1=15) and not(otdel1=10) and dep1=3 and dekret = 0 ",1])

@dep_prod_m = Office1.find_by_sql(["select distinct otdel1 from office1s where city=? and (dep1 is not null) and not(otdel1=15) and dep1=1 and dekret = 0 ",2])
@dep_obesp_m =Office1.find_by_sql(["select distinct otdel1 from office1s where city=? and (dep1 is not null) and not(otdel1=15) and dep1=2 and dekret = 0 ",2])
@dep_deyat_m  = Office1.find_by_sql(["select distinct otdel1 from office1s where city=? and (dep1 is not null) and not(otdel1=15) and dep1=3 and dekret = 0 ",2])

@dep_prod_s = Office1.find_by_sql(["select distinct otdel1 from office1s where city=? and (dep1 is not null) and not(otdel1=15) and dep1=1 and dekret = 0 ",3])
@dep_obesp_s =Office1.find_by_sql(["select distinct otdel1 from office1s where city=? and (dep1 is not null) and not(otdel1=15) and dep1=2 and dekret = 0 ",3])
@dep_deyat_s  = Office1.find_by_sql(["select distinct otdel1 from office1s where city=? and (dep1 is not null) and not(otdel1=15) and dep1=3 and dekret = 0 ",3])


@tver =  Office1.find :all , :conditions=>['city = ? and dekret = 0',4]

    end

  end

  def work
  usr

@menu=3
  @path='работа / '

  @path += ' приказы' if params[:smenu] == '1'
  @path += ' распоряжения' if params[:smenu] == '2'
  @path += ' положения' if params[:smenu] == '3'
  @path += ' инструкции' if params[:smenu] == '4'
   @path += ' правила' if params[:smenu] == '5'

   @work = Work.find_by_id(params[:smenu]) if @usr==nil or @usr.city==1
   @work = Work.find_by_id(params[:smenu].to_i + 5) if @usr and @usr.city==2
  # @work= Work.find_by_id(2) if params[:smenu] == '2'
  # @work= Work.find_by_id(3) if params[:smenu] == '3'
  # @work= Work.find_by_id(4) if params[:smenu] == '4'

end

  def breef
    @man=Office1.find_by_id(params[:id])

  end

def alf
  @stf=Office1.find_by_id(params[:id])
  render :partial=>'/part/alf3' , :object=>@stf
end



    def redir1
    redirect_to("http://www.segment.ru/rearticles/show/3960/101/501/")
  end
   def redir2
    redirect_to("http://www.segment.ru/rearticles/show/3995/")
  end
   def redir3
    redirect_to("http://www.segment.ru/news/show/24750/")
  end
   def redir4
    redirect_to("http://www.segment.ru/news/show/24675/")
  end
   def redir5
    redirect_to("http://www.segment.ru/news/show/24641/")
  end
 def redir6
    redirect_to("http://content.yudu.com/Library/A1q7z2/OfficeFileMagazineRu/resources/index.htm?referrerUrl")
  end


end
