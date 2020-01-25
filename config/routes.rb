Rails.application.routes.draw do


  devise_for :users , :controllers => {:sessions => "users/sessions" ,
                                       :passwords => "users/passwords", 
                                       :registrations => "users/registrations",
                                       :confirmations => "users/confirmations",
                                       :unlocks => "users/unlocks"}
  # namespace :admin do
  #   resources :portfolios
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root to: 'main#portfolio'

#Menu pirncipal
get 'main/beauty', :to => 'main#beauty'
get 'main/fashion', :to => 'main#fashion'
get 'main/commercial', :to => 'main#commercial'
get 'main/jewelry', :to => 'main#jewelry'

#Contacto, servicios y bio
get 'main/services', :to => 'main#services'
get 'main/contact', :to => 'main#contact'
post 'main/contact', :to => 'main#create_contact'  
get 'main/bio', :to => 'main#bio' 





# get 'main/blog', :to => 'main#blog' 
# get 'main/contact', :to => 'main#contact' 
# get 'main/editorial', :to => 'main#editorial'
# get 'main/portrait', :to => 'main#portrait'
# get 'main/sport', :to => 'main#sport'

namespace :admin do 


  root to: 'base#home'
   
  # resources :cyclorosses
  # resources :portraits
  # resources :editorials
  # resources :sports

  resources :portfolios
  resources :beauties
  resources :commercials
  resources :fashions
  resources :jewelries

  resources :services
  resources :biographies

end


end
