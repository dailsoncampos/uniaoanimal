Rails.application.routes.draw do
  devise_for :agents
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'
  resources :events
  resources :addresses
  resources :agents
end
