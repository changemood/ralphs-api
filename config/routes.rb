Rails.application.routes.draw do
  # devise_for :users
  mount_devise_token_auth_for 'User', at: 'users/auth'
  resources :users, only: [:show, :index] do
    resources :cards
  end
  resources :cards
end