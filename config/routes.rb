Rails.application.routes.draw do
  devise_for :agents
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :events
  resources :addresses
  resources :agents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
