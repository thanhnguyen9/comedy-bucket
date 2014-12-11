Rails.application.routes.draw do

  root 'artists#index'

  resources :products

  resources :artists

  devise_for :users

  resources :artists

  resources :comments

  resources :commentartists, only: [:create]

  resources :relationships, only: [:index, :create, :show, :destroy]

  get 'videos/new' => 'videos#new'

  get 'recommend' => "recommend#index"

  get 'connects' => 'connects#index'

  get 'users/:id' => 'users#show', as: :user

  get 'add' => 'artists#add', as: :add

  post 'products/:id/like' => 'products#like', as: :like

  post 'votes/create' => 'votes#create', as: :votes

  post 'videos' => 'videos#create'

  post 'comedians' => 'comedians#create', as: :comedians

  post 'voteartists/create' => 'voteartists#create', as: :vote_artists

  delete 'votes' => 'votes#destroy', as: :vote

  delete 'voteartists' => "voteartists#destroy", as: :vote_artist

  namespace :api do
    get '/artists' => 'artists#index'
    post '/artists' => 'artists#create'
    get '/artists/:id' => 'artists#show'
    put '/artists/:id' => 'artists#update'
    delete '/artists/:id' => 'artists#destroy'

    get '/videos' => 'videos#index'
    post '/videos' => 'videos#create'
    put '/videos/:id' => 'videos#update'
    delete '/videos/:id' => 'videos#destroy'

    get '/schedules' => 'schedules#index'
    post '/schedules' => 'schedules#create'
    put '/schedules/:id' => 'schedules#update'
    get 'schedules/:name' => 'schedules#search'
  end

end
