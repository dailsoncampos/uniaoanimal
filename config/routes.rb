Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :agents
  devise_for :adopters, path: 'usuario', controllers: { sessions: "adopters/sessions", registrations: "adopters/registrations", passwords: "adopters/passwords"}

  resources :donors
  resources :events
  resources :agents
  resources :animals
  resources "contacts", only: [:new, :create]

  get 'thanks_donation/index'
  get '/sobre', to: "static_page#about"
  # get '/contato', to: "static_page#contact"
  # get '/registrar', to: "devise/sessions#new"
  get '/eventos', to: "events_page#index"
  get '/animais', to: "animals_page#index"
  get '/animais/:id', to: "animals_page#show", as: :search_show

  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'

  scope '/painel' do
    get "/" => "adopter_dashboard#index", as: "adopter_dashboard"
    get "/dados-pessoais" => "adopter_dashboard#show", as: "usuario_info"
  end
end
