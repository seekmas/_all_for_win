Rails.application.routes.draw do

  resources :covers

  resources :comments

  resources :statuses

  resources :titles

  resources :aliases

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


  get '/:title_id/get-title' , :to => 'titles#get_title' , :as => 'get_title'
  get '/auth/:provider/callback', to: 'sessions#create'

  get '/:id/card' , to: 'starter#index' , :as => 'card'
  get '/:id/comment' , to: 'starter#comment' , :as => 'list_comment'

  root 'starter#index'
end
