Rails.application.routes.draw do
  get 'blockchain', to: 'blockchain#index'
  get 'blockchain/token_request', to: 'blockchain#token_request'
  get 'blockchain/dashboard', to: 'blockchain#dashboard'
  post 'blockchain/transaction', to: 'blockchain#create_transaction'

  resources :wallets
  devise_for :users, :controllers => { :registrations => 'registrations', :sessions => "sessions"}

  root controller: 'static_pages', action: 'home'
  post 'claim_code', to: 'wallets#claim_code'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/partners'
  get 'static_pages/forum'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
