Rails.application.routes.draw do

  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new]
  end

  resources :posts, except: [:delete]

  root 'posts#index'
end
