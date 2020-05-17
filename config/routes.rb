Rails.application.routes.draw do
  get 'homes/index'
  devise_for :users
  root to:'posts#index'
  resources :posts, except: :show
  # resources :posts ,only: [:index, :new, :create]

end
