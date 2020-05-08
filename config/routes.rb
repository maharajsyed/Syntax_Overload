Rails.application.routes.draw do
  devise_for :users
  #get "u/:username to "public#profile", as: :profile
  resources :clubs do
    resources :posts
  end
  
  root to: "public#index"
end
