TimeKiller::Application.routes.draw do
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "create_answer" => "posts#create_answer", :as => "create_answer"

  root to: 'posts#index'


  resources :posts do
    resources :comments
  end
  resources :users
  resources :sessions

end
