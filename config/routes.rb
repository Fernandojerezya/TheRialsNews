Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  # Definición de la ruta raíz ("/")
  root "pages#news"

  
end

