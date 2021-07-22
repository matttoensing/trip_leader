Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :trip_reports

  root 'home#index'
  get '/home/about', to: 'home#about'

  get '/users/:id', to: 'users#show'

  get 'devise/sessions/new'
  post 'devise/sessions/create'
  delete 'devise/sessions/destroy'
  get 'devise/passwords/edit'
end
