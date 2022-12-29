Rails.application.routes.draw do
  root to: 'home#index'
  get '/ola', to: 'home#ola' # usuario => site => /ola => home_controller => def ola() (action) => resposta
end
