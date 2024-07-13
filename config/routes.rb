Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :lists, only: [:index, :create]
      end

      resources :lists, only: [:show, :update, :destroy] do
        resources :list_items, only: [:index, :create]
      end

      resources :list_items, only: [:show, :update, :destroy]
    end
  end
end
