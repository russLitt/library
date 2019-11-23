Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

resources :blogs do
  resources :articles do
    resources :comments
  end
end

  root 'blogs#index'
end