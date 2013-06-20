class MailerZakaz < ActionMailer::Base
  

  def zakaz(adres,tel,fio, city)
    subject    'Пожалуйста вышлите каталог'
    recipients  ['izenkova@spens.ru', 'mrogov@spens.ru','ikatok@spens.ru','akushnarenko@spens.ru']
    from       'welcome@zhivojoffice.ru'
    sent_on    Time.now
    
    body       :adres=>adres,:tel=>tel,:fio=>fio ,:city=>city
  end

end
