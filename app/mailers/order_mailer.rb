# encoding: utf-8
class OrderMailer < ActionMailer::Base

  default from: 'vitalina.liane@gmail.com'

  
  def client_has_subscribed(order)
    @order = order        
    mail(to: @order.email, subject: 'Вiтаю, Ви пiдписалися')    
  end         
  
      
end
