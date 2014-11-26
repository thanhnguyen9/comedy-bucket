Rails.application.routes.draw do

  devise_for :users
  root 'artists#index'

  get 'artists' => 'artists#index'

  get 'artists/:id' => 'artists#show'

  get 'artists/new' => 'artists#new'

  post 'artists' => 'artists#create'

  get 'aritsts/:id' => 'artists#show' ,as: :artist

  get 'videos/new' => 'videos#new'

  post 'videos' => 'videos#create'

  resources :products

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
