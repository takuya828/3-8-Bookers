Rails.application.routes.draw do
  get 'books/new'
  get '/' => 'homes#top'
  get 'books' => 'books#index'
  get 'books' => 'books#show'
  get 'books' => 'books#edit'
  post 'books' => 'books#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
