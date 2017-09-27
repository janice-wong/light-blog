Rails.application.routes.draw do
  root :to => 'posts#index'

  namespace :api do
    resources :posts, only: [:index, :create, :show, :update, :destroy]
  end
end
