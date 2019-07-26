Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root to: 'main#cyclocross'


get 'main/blog', :to => 'main#blog' 
get 'main/contact', :to => 'main#contact' 
get 'main/editorial', :to => 'main#editorial'
get 'main/portrait', :to => 'main#portrait'
get 'main/sport', :to => 'main#sport'

namespace :admin do 

  root to: 'main#cyclocross'
  resources :cyclorosses
  resources :portraits
  resources :editorials
  resources :sports


end


end
