Rails.application.routes.draw do
  root to: 'home#index'
  resources :recipes do # gera todas as rotas automaticamente
    patch :publish, on: :member # a rota customizada é um membro de recipes
  end
  resources :recipe_types, only: [:new, :create]
  resources :cuisines, only: [:new, :create]
  # get 'recipes/:id', to: 'recipes#show' # se for fazer rota por rota
  get '/ola', to: 'home#ola' # usuario => site => /ola => home_controller => def ola() (action) => resposta
end