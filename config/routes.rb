Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :news
  resources :news, only: [:new, :create] 
  # Definición de la ruta raíz ("/")
  root "pages#news"

  
end

