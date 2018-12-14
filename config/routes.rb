Rails.application.routes.draw do
  resources :donors
  get '/eventos', to: "events_page#index"
  # get '/eventos/:id', to: "events_page#show", as: :evento
  devise_for :agents
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  resources :events
  resources :agents
  resources :tutors
  resources :animals
  root to: 'home#index'
end
