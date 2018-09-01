Rails.application.routes.draw do

  resources :works
  resources :courses
  devise_for :users, path: '', path_names: { sign_in: 'connexion', sign_out: 'déconnexion', sign_up: 'inscription'}
  root to: 'home#index'
  get "backupjv" => "home#backup", :as => :backupjv
  get "moncompte" => "users#show", :as => :moncompte
  get "administration" => "admins#index", :as => :administration
  get "updateadmin" => "admins#update", :as => :updateadmin
  get "adminsvalidates" => "admins#admin", :as => :adminsvalidates
  get "deleteaccount" => "admins#destroy", :as => :deleteaccount
  get "deletecourse" => "courses#delete", :as => :deletecourse
  get "deletework" => "works#delete", :as => :deletework


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
