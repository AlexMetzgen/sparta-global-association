Rails.application.routes.draw do
  resources :userservers
  resources :users
  resources :userfiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
