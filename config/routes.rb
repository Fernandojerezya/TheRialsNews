Rails.application.routes.draw do
  # Ruta para la página de noticias
  get 'pages/news'

  # Rutas para los comentarios y noticias dentro del bloque resources :news do ... end
  resources :news do
    resources :comments
  end

  # Rutas de Devise para usuarios (inicio de sesión, registro, etc.)
  devise_for :users

  # Definición de la ruta raíz ("/")
  root "pages#news"
end

