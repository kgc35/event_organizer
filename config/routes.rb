Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, except: :new
  # resources :comments
  # resources :events
  # resources :event_tags
  # resources :tags
  get '/signup', to: "users#new"

end
