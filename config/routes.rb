Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :trip_reports

  root 'home#index'
  get '/home/about', to: 'home#about'

  get '/users/:id', to: 'users#show'

  get '/users/:user_id/trips', to: 'user_trips#index'
  get '/users/:user_id/trips/new', to: 'user_trips#new'
  post '/users/:user_id/trips', to: 'user_trips#create'

  get 'devise/sessions/new'
  post 'devise/sessions/create'
  delete 'devise/sessions/destroy'
  get 'devise/passwords/edit'
end
