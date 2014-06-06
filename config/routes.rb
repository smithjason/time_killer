TimeKiller::Application.routes.draw do
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  root to: 'users#new'

  get "posts", to: 'posts#index'
  get "posts/:id", to: 'posts#show'

  resources :users do
    resources :posts
  end
  resources :sessions

end
