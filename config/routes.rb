Rails.application.routes.draw do
  devise_for :admins
  # devise_for :users
  namespace :api do
    # For authentication localhost:3000/api/v1/auth
    # For details https://github.com/lynndylanhurley/devise_token_auth
    mount_devise_token_auth_for 'User', at: 'v1/auth'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end