class Pokemon < ApplicationRecord
  has_many :users_pokemons
  has_many :users, through: :users_pokemons
end
