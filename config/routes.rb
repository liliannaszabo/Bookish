Rails.application.routes.draw do
  get 'books/index', to:"books#index"
  get 'books/add', to:"books#add"
  get 'books/remove', to:"books#remove"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "books#index"
end
