Rails.application.routes.draw do
  get 'blockchain', to: 'blockchain#index'
  #resources :wallets
  #devise_for :users, :controllers => { :registrations => 'registrations'}

  root controller: 'static_pages_controller', action: 'home'
  post 'claim_code', to: 'wallets#claim_code'
  get 'static_pages_controller/home'
  get 'static_pages_controller/about'
  get 'static_pages_controller/contact'
  get 'static_pages_controller/partners'
  get 'static_pages_controller/forum'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
