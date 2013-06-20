class Mailer < ActionMailer::Base
  

  def welcome(mail,name,name_l,password,surname,phone,rnd)
 # def welcome(mail,rnd)
    subject    'Спасибо за регистрацию!'
    recipients mail
    from      'welcome@zhivojoffice.ru'
    sent_on    Time.now
    body      :rnd=>rnd,:mail=>mail,:name=>name,:password=>password,:name_l=>name_l,:surname=>surname,:phone=>phone
  end

  def pass(mail,name,rnd)
 # def welcome(mail,rnd)
    subject    'Сервис изменения пароля.'
    recipients [mail,'support1@zhivojoffice.ru']
    from      'welcome@zhivojoffice.ru'
    sent_on    Time.now
    body      :rnd=>rnd,:mail=>mail,:name=>name

  end





  def bonus(mail,name,surname,nach,ost,id )
    subject    'Ваш бонусный счет пополнен!'
    recipients mail
    bcc 'bonus_copy@zhivojoffice.ru'
    from      'Бонусная программа Служебный роман <welcome@zhivojoffice.ru>'
    sent_on    Time.now
    body :name=>name ,:surname=>surname,:nach=>nach,:ost=>ost,:id=>id
  end


  def new1(mail , name , name_l , password , surname , phone , company_ind ,inn , city )
    subject    ' У нас новый клиент!'
    #recipients 'vadim@plusnin.ru'
    if city=='Смоленск'
    recipients [ 'mrogov@spens.ru' , 'opospelova@244424.ru','etsarenkov@244424.ru' ,'kpraksina@244424.ru',]
    elsif city=='Москва'
    recipients ['izenkova@spens.ru', 'mrogov@spens.ru' , 'ekorchagina@spens.ru','ssuhova@spens.ru', 'ikatok@spens.ru', 'aarsalanova@7303077.ru']
    else
    recipients ['izenkova@spens.ru', 'mrogov@spens.ru' ,  'ekorchagina@spens.ru','ssuhova@spens.ru','ikatok@spens.ru']
    end
    #bcc 'iryabova@spens.ru''izamuraeva@spens.ru'
    #cc 'vplusnin@spens.ru''izamuraeva@spens.ru''iryabova@spens.ru'
    from       'Сайт живой офис <welcome@zhivojoffice.ru>'
    sent_on    Time.now
    body      :mail=>mail,:name=>name,:password=>password,:name_l=>name_l,:surname=>surname,:phone=>phone,:company_ind=>company_ind,:inn=>inn, :city=>city
  end
  
  def zakaz(user,cart,street)
     subject    'new order'
      recipients 'vadim@plusnin.ru'
      from      'Сайт Живой офис <welcome@zhivojoffice.ru>'
      sent_on    Time.now
       
       body :user=>user ,:street=>street
       body["cart"]=cart
  end
  def zakaz1(order)
     content_type 'text/html'
     subject    'new order'
     # recipients 'vadim@plusnin.ru'
    user=User.find_by_id(order.user_id)
    

     if user.city=='Смоленск'
      recipients ['opospelova@244424.ru','mkarimova@244424.ru','etsarenkov@244424.ru', 'mrogov@spens.ru', 'zakaz_1csml@spens.ru']
    else
      recipients ['izenkova@spens.ru','ssuhova@spens.ru', 'mrogov@spens.ru','1c@zhivojoffice.ru','zakaz_1c@spens.ru','ikatok@spens.ru']
     end
      from      'Сайт Живой офис  <welcome@zhivojoffice.ru>'
     
      sent_on    Time.now


       body["order"]=order
  end


   def zakaz2(order)
     content_type 'text/html'
     subject    'new order'
     # recipients 'vadim@plusnin.ru'
     recipients    ['izenkova@spens.ru','ssuhova@spens.ru', 'mrogov@spens.ru','1c@zhivojoffice.ru','zakaz_1c@spens.ru','ikatok@spens.ru']
      from      'Сайт Живой офис  <welcome@zhivojoffice.ru>'

      sent_on    Time.now


       body["order"]=order
   end

  def zakaz21 (order)
     content_type 'text/html'
     subject    'new order'
     # recipients 'vadim@plusnin.ru'
     recipients    ['izenkova@spens.ru','ssuhova@spens.ru', 'mrogov@spens.ru','1c@zhivojoffice.ru','zakaz_1c@spens.ru','ikatok@spens.ru']
      from      'Сайт Живой офис  <welcome@zhivojoffice.ru>'

      sent_on    Time.now


       body["order"]=order
  end

  def zbonus (order)
    content_type 'text/html'
     subject    'new order bonus'
     # recipients 'vadim@plusnin.ru'
     recipients    ['izenkova@spens.ru', 'mrogov@spens.ru','ssuhova@spens.ru','ikatok@spens.ru']
    #recipients    ['vplusnin@spens.ru', 'vplusnin@spens.ru']
      from      'Сайт Живой офис  <welcome@zhivojoffice.ru>'

      sent_on    Time.now


       body["order"]=order 
      # body :k1c=>k1c ,:name=>name


  end

  def  zz(phone,name,quest,m)
    subject    'Пожалуйста позвоните мне'
    recipients ['mrogov@spens.ru','ikatok@spens.ru', 'IZenkova@spens.ru']
    from      'Сайт Живой офис сервис заказ звонка  <welcome@zhivojoffice.ru>'
    sent_on    Time.now
    body :phone=>phone , :name=>name,:quest=>quest

  end

  def np(id,k1c,tov3_id)
    content_type 'text/html'
     subject    'Проблемы с ценой'
    recipients ['mrogov@spens.ru','asmirnova@spens.ru','ekorchagina@spens.ru']
    from      'Сайт Живой офис проблемы с ценой  <welcome@zhivojoffice.ru>'
    sent_on    Time.now
    body :k1c=>k1c , :id=>id ,:tov3_id=>tov3_id

  end

  def ep()
    content_type 'text/html'
     subject    'Я робот'
    recipients 'mrogov@spens.ru'
    from      'Сайт Живой офис  рассылка  <welcome@zhivojoffice.ru>'
    sent_on    Time.now
   

  end
  def netf(text)
    content_type 'text/html'
     subject    'Я робот,нет файла '+text
    recipients  'mrogov@spens.ru'
    from      'Сайт Живой офис  рассылка  <welcome@zhivojoffice.ru>'
    sent_on    Time.now


  end

  def tort1(order)
     content_type 'text/html'
     subject    'новый торт'

               recipients    [ 'mrogov@spens.ru' , 'pastry@summerpalace.ru' , 'a.k@summerpalace.ru']
              # recipients    ['mrogov@spens.ru']
      from      'Сайт Живой офис  <welcome@zhivojoffice.ru>'

      sent_on    Time.now


       body["order"]=order
  end

   def water1(order)
     content_type 'text/html'
     subject    'Заказ воды'
               recipients    [ 'mrogov@spens.ru' , 'sale@aquapro-ws.ru' , 'aquapro-ws@mail.ru']
              # recipients    ['vplusnin@spens.ru','epikaleva@spens.ru', 'mrogov@spens.ru' , 'pastry@summerpalace.ru' , 'a.k@summerpalace.ru']
              # recipients    ['mrogov@spens.ru']
      from      'Сайт Живой офис  <welcome@zhivojoffice.ru>'

      sent_on    Time.now


       body["order"]=order
   end

   def keit1(order)
     content_type 'text/html'
     subject    'Кейтеринг'
               recipients    ['mrogov@spens.ru' , 'mf@anc-group.ru' , 'banket@anc-group.ru' ]

      from      'Сайт Живой офис  <welcome@zhivojoffice.ru>'

      sent_on    Time.now


       body["order"]=order
   end

   def viktorina(order)
     content_type 'text/html'
     subject    'Победитель викторины'
               recipients    ['mrogov@spens.ru' , 'epikaleva@spens.ru' ]

      from      'Сайт Живой офис  <welcome@zhivojoffice.ru>'

      sent_on    Time.now


       body["order"]=order
   end


def mailer(user)

@subject = 'Убиваем рутину и едем в Италию! Ты с нами'
@body = {}
@recipients = 'mrogov@spens.ru'
@from = 'welcome@zhivojoffice.ru'
@sent_on = Time.now
@headers = {}

part :content_type => 'text/html',
:body => '<a href="http://убейрутину.рф/"><img src="cid:part1@domain.com" border="0"></a>',
:content_disposition => 'inline',
:headers => { 'content-id' => '<html-1@domain.com>' }

part :content_type => 'image/jpeg',
:content_disposition => 'inline',
:transfer_encoding => 'base64',
:body => File.read(RAILS_ROOT+"/public/images/mm.jpg"),
:filename => 'mm.jpg',
:headers => { 'content-id' => '<part1@domain.com>' }
end


end
