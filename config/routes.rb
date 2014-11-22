Rails.application.routes.draw do

  root 'artists#index'

  resources :artists

  get 'videos/new' => 'videos#new'

  post 'videos' => 'videos#create'

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
    get '/schedules/:id' => 'schedules#show'

  end
end
