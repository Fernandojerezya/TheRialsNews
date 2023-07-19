Rails.application.routes.draw do
  get 'pages/news'
  resources :comments
  resources :news
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :news do
  resources :comments
  end
  

  # Defines the root path route ("/")
    root "pages#news"
end
