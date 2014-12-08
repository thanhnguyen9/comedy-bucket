Rails.application.routes.draw do

  root 'artists#index'

  resources :products

  resources :artists

  devise_for :users

  resources :artists

  resources :comments

  resources :relationships, only: [:index, :create, :show, :destroy]

  get 'videos/new' => 'videos#new'

  get 'recommend' => "recommend#index"

  get 'connects' => 'connects#index'

  get 'users/:id' => 'users#show', as: :user

  post 'products/:id/like' => 'products#like', as: :like

  post 'votes/create' => 'votes#create', as: :votes

  post 'videos' => 'videos#create'

  delete 'votes' => 'votes#destroy', as: :vote

  namespace :api do
    get '/artists' => 'artists#index'
    post '/artists' => 'artists#create'
    put '/artists/:id' => 'artists#update'
    delete '/artists/:id' => 'artists#destroy'

    get '/videos' => 'videos#index'
    post '/videos' => 'videos#create'
    put '/videos/:id' => 'videos#update'
    delete '/videos/:id' => 'videos#destroy'

    get '/schedules' => 'schedules#index'
    post '/schedules' => 'schedules#create'
    put '/schedules/:id' => 'schedules#update'
    get 'schedules/:id' => 'schedules#show'

  end
  
end
