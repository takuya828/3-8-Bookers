Rails.application.routes.draw do
  # get 'books/new'
  root to: 'homes#top'
  get '/' => 'homes#top'
  resources :books
    patch 'books/:id' => 'books#update', as: 'update_book'
    delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # get 'books' => 'books#index'
  # get 'books' => 'books#show'
  # get 'books' => 'books#edit'
  # post 'books' => 'books#create'
  # get 'books/:id' => 'books#show', as: 'books'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
