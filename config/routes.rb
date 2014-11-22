Rails.application.routes.draw do

  root 'artists#index'

  get 'artists/new' => 'artists#new'

  post 'artists' => 'artists#create'

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

  end
end
