# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'
require 'pry'

 #Pokemon.destroy_all #clear old seeds every time i seed
#   # make the web request
  pokemon_data = RestClient.get('http://pokeapi.co/api/v2/pokemon')
#   # parse that data and javascript object notationify it
  pokemon_hash = JSON.parse(pokemon_data.body)
  generation_one = pokemon_hash["results"].slice(6..10)
#
#
def pokemon_list(generation_one)
  generation_one.each do |pokemen|
    pokemon_link = pokemen["url"]
    sleep(1)
    individual_pokemon = RestClient.get(pokemon_link)
    pokemon = JSON.parse(individual_pokemon.body)
    # puts pokemon

    species = pokemon["forms"].first["name"]
    sprite_image = pokemon["sprites"]["front_default"]
    battle_type_1 = pokemon["types"][0]["type"]["name"]

    battle_type_2 = ""
    if pokemon["types"].length > 1
      battle_type_2 = pokemon["types"][1]["type"]["name"]
    end

    new_pokemon = Pokemon.create(
      species: species,
      sprite_image: sprite_image,
      battle_type_1: battle_type_1,
      battle_type_2: battle_type_2
    )
    puts "#{new_pokemon.id} - #{new_pokemon.species}"
  end
end


pokemon_list(generation_one)

# all pkmn images




# i need to take this data and iterate over it. turning each object into a new instance of Pokemon
# then i can write a method on it in my pokemon model.   and use my pokemon controller to render: json
