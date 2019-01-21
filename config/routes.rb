Rails.application.routes.draw do
  resources :donors
  get '/eventos', to: "events_page#index"
  get '/animais', to: "animals_page#index"
  get '/animais/:id', to: "animals_page#show", as: :search_show
  devise_for :agents
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  resources :events
  resources :agents
  resources :tutors
  resources :animals
  root to: 'home#index'
end
