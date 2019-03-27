Rails.application.routes.draw do

  root 'static_pages#home'
  get    'help'     => 'static_pages#help'
  get    'signup'   => 'users#new'
  get    'login'    => 'sessions#new'
  post   'login'    => 'sessions#create'
  delete 'logout'   => 'sessions#destroy'

  resources :users do
    member do
        get :following, :followers
    end
  end

  resources :travels, only: [:create, :destroy, :edit, :update] do
    resources :multiples, :only => [:create, :destroy]
  end

  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  resources :relationships, only: [:create, :destroy]

end
