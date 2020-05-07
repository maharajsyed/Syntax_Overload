Rails.application.routes.draw do
  devise_for :users
  resources :clubs do
    resources :posts
  end

  
  root to: "public#index"
end
