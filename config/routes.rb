Rails.application.routes.draw do
  root controller: 'static_pages_controller', action: 'home'
  get 'static_pages_controller/home'
  get 'static_pages_controller/about'
  get 'static_pages_controller/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
