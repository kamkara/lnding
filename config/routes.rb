Rails.application.routes.draw do
  get 'connected/index'
  resources :resultats
  #get "/delete-preinscription", to:"resultats#destroy", as: :preinscription_destroy
  #get "/edit-preinscription", to:"resultats#edit", as: :preinscription_edit
  #get "/preinscription", to:"resultats#new", as: :preinscription_new
  #get "/debut-preinscription", to:"resultats#index", as: :preinscription_index
  #get "/preinscription-termine", to:"resultats#show", as: :preinscription_show
  get '/motivation', to:'admin#index' , as: :admin
  get '/serie_d', to:'admin#serie_d' , as: :serie_d
  get '/serie_a1', to:'admin#serie_a1' , as: :serie_a1
  get '/serie_a2', to:'admin#serie_a2' , as: :serie_a2
  get '/serie_c', to:'admin#serie_c' , as: :serie_c
  
 
devise_scope :user do
    get 'profile/edit'    => 'devise/registrations#edit',   :as => :edit_user_registration
    get 'profile/cancel'  => 'devise/registrations#cancel', :as => :cancel_user_registration
  end

  devise_for  :users,
              :path => '',
              :path_names => {  :sign_in =>       'connecter',
                                :sign_out =>      'logout',
                                :sign_up =>       '',
                                :registration =>  'member',
                                :edit =>          'edit',
                                :cancel =>        'cancel',
                                :confirmation =>  'verification'  }
  root to:'resultats#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
