Rails.application.routes.draw do

  resources :statuses

  resources :titles

  resources :aliases

  devise_for :users

  get '/:title_id/get-title' , :to => 'titles#get_title' , :as => 'get_title'

  get '/auth/:provider', to: 'sessions#create' , :as => 'wechat_oauth'

  root 'starter#index'
end
