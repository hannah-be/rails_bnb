Rails.application.routes.draw do
  devise_for :users
  resources :listings
  root "listings#index"
  
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
