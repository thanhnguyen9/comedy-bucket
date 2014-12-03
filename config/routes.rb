Rails.application.routes.draw do

  devise_for :users

  resources :products

  resources :comments

  resources :relationships, only: [:index, :create, :destroy]

  get 'comments/new'

  get 'comments/edit'

  get 'recommend/index'

  root 'artists#index'

  get 'artists' => 'artists#index'

  get 'artists/:id' => 'artists#show'

  get 'artists/new' => 'artists#new'

  post 'artists' => 'artists#create'

  get 'aritsts/:id' => 'artists#show' ,as: :artist

  get 'videos/new' => 'videos#new'

  post 'videos' => 'videos#create'

  get 'recommend' => "recommend#index"

  get 'users/:id' => 'users#show', as: :user

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
