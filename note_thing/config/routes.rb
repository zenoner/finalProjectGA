Rails.application.routes.draw do
  devise_for :users
  resources :notes
  resources :notebooks
  root to: 'notebooks#view'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
