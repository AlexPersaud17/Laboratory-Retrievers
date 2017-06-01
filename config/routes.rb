Rails.application.routes.draw do

  root "users#login"

  get '/users/login', to: 'users#login'
  get '/users/logout', to: 'users#logout'
  get '/users/new', to: 'users#new'

  post '/users', to: 'users#create'
  post '/users/login', to: 'users#authenticate'

  get '/users/:id', to: 'users#show'


  resources :experiment_proposals do
    resources :experiments do
      resources :observations, only: [:index, :create, :new]
    end
  end






  get '/experiments/:experiment_id/procedures/new', to: 'procedures#new'
  post '/experiments/:experiment_id/procedures', to: 'procedures#create'
  get '/experiments/:experiment_id/procedures/:id/edit', to: 'procedures#edit'
  put '/experiments/:experiment_id/procedures/:id', to: 'procedures#update'
  delete '/experiments/:experiment_id/procedures/:id', to: 'procedures#destroy'


  get '/experiments/:id/comments/new', to: 'comments#new'
  post '/experiments/:id/comments', to: 'comments#create'
  get '/experiment_proposals/:id/comments/new', to: 'comments#new'
  post '/experiment_proposals/:id/comments', to: 'comments#create'
end
