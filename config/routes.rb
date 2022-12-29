Rails.application.routes.draw do
  root to: 'home#index'
  resources :recipes # gera todas as rotas automaticamente
  resources :recipe_types, only: [:new, :create]
  # get 'recipes/:id', to: 'recipes#show' # se for fazer rota por rota
  get '/ola', to: 'home#ola' # usuario => site => /ola => home_controller => def ola() (action) => resposta
end