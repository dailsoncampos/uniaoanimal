Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  devise_for :agents

  resources :adoptions
  resources :requesters
  resources :donors
  resources :events
  resources :agents
  resources :animals

  get 'thanks_donation/index'
  get '/registrar', to: "devise/sessions#new"
  get '/eventos', to: "events_page#index"
  get '/animais', to: "animals_page#index"
  get '/animais/:id', to: "animals_page#show", as: :search_show

  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
end
