Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :loos
  resources :notes
  resources :review_notes
  resources :reviews
  resources :trips
  resources :users

  root 'loos#index'

end
