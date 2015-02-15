Rails.application.routes.draw do

  resources :statuses

  resources :titles

  resources :aliases

  devise_for :users

  get '/:title_id/get-title' , :to => 'titles#get_title' , :as => 'get_title'

  get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'

  root 'starter#index'
end
