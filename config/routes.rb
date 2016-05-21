Rails.application.routes.draw do                

  match '/',                               to: 'main_pages#index',                                  via: 'get'  
  post  '/',                               to: 'main_pages#index'           
  
  
  match 'info/:msg',                       to: 'order_info_pages#show',                             via: 'get'  
  post  'info/:msg',                       to: 'order_info_pages#show'                                
  post  '/orders',                         to: 'orders#create'                     # for OrderForm works (path for creating new order)
  
                                               
  
    
  root 'main_pages#index'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)    
    
  match "*path",                           to: 'main_pages#index',                                  via: 'get'
end
