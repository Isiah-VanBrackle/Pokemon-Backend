class PokemonsController < ApplicationController
  def index
    @pokemon = Pokemon.all
    render json: @pokemon.to_json
  end
end
