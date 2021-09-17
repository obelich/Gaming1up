Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :categories
  get 'site/index'
  get 'site/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
