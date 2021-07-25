Rails.application.routes.draw do
  resources :resultats
  get 'admin/index'
  devise_for :users
  root to:'resultats#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
