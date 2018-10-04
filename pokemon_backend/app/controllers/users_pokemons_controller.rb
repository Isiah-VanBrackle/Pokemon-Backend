class UsersPokemonsController < ApplicationController
  def index
    @users_pokemon = Users_pokemon.all
    render json: @Users_pokemon.to_json
  end

end
