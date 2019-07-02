Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  resources :merchants do
    resources :items, only: [:index, :new, :create]
    end
    resources :items, only: [:index, :show, :edit, :update, :destroy] do
      resources :reviews
    end
  end
