Rails.application.routes.draw do
  root to:'home#index'
  get 'resultat/A1'
  get 'resultat/A2'
  get 'resultat/D'
  get 'resultat/C'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
