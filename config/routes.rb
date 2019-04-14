Rails.application.routes.draw do

  devise_for :users, controllers: { confirmations: 'confirmations',  omniauth_callbacks: "omniauth_callbacks" }

  root 'static_pages#home'
  get    'help'     => 'static_pages#help'
  get    'signup'   => 'devise/registrations#new'
  get    'login'    => 'devise/sessions#new'
  post   'login'    => 'devise/sessions#create'
  delete 'logout'   => 'devise/sessions#destroy'

  resources :users do
    member do
        get :following, :followers
    end
  end

  resources :travels, only: [:create, :destroy, :edit, :update, :index] do
    resources :multiples, :only => [:create, :destroy]
    resources :comments
    member do
        put "like" => 'travels#vote'
    end
  end

  resources :relationships, only: [:create, :destroy]

end
