Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :instigator do
    resources :cats, only: [:new, :create, :show]
  end
end
