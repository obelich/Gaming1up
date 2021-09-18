# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root 'site#index'


  resources :addresses
  devise_for :users
  resources :products
  resources :categories
  get 'site/index'
  get 'site/contact'
  get 'site/product/:id', to: 'site#product', as: 'product_detail'
end
