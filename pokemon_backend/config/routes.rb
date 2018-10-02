Rails.application.routes.draw do
  # 
  resources :users_pokemons
  resources :pokemons
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
