Rails.application.routes.draw do
  devise_for :users
  root to: "welcome_page#index"

  resources :notes

  resources :posts do
    resources :comments
  end
end
