# encoding: utf-8
class OrdersController < ApplicationController
  
  
  
  def create
    root_path = MeConstant.find_by_title('root_path').content  
    
    @order            = Order.new(order_params)
    @order.akey       = akey
    @order.akey_payed = akey  
    @order.able       = true
#_______________________________________________________________________________

            
    if @order.save
    
      OrderMailer.client_has_subscribed(@order).deliver           
      redirect_to '/info/proverte_email_posle_oplaty'

#_______________________________________________________________________________if @order.save
       
       
       
    else  
      flash[:order_name]  = @order.name
      flash[:order_email] = @order.email    
      
      
      anchor = ''
      @order.errors.each do |attr, msg|
        flash[:error_class_name]  = 'error_field' if attr == :name
        flash[:error_class_email] = 'error_field' if attr == :email
                
                
        flash[:autofocus_name] = false                
        flash[:autofocus_email] = false     
            
        if attr == :name
          flash[:autofocus_name] = true
        else
          if attr == :email
            flash[:autofocus_email] = true
          end
        end                
                
                
        if attr.in? [:name, :email]
          anchor = '#form'
        end
      end
      
      
      url = root_path +        
            anchor
      redirect_to url 
    end  
  end


  private  
    def order_params
      params.require(:order).permit(:payed, :name, :email, :akey, :pay_link, :sum_for_pay, :when_payed, :akey_payed, :able, :sent_email_with_test, :group, :test_ended)
    end  

end    
  
