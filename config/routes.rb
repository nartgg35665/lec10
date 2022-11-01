Rails.application.routes.draw do
  get 'shop/main'
  resources :inventories
  get 'main/login'
  post 'main/create'
  get 'main/user_items'
  post 'main/user_items'
  get 'shop/:id',to:'shop#main'
  post 'shop/checkitem'
  get 'main/inventories'
  post 'main/update'
  post 'main/delete'
  post 'main/inventories'
  get 'items/new_item'
  resources :items
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
