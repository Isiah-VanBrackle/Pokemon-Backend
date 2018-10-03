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

 Pokemon.destroy_all #clear old seeds every time i seed

























































#   # make the web request
#   pokemon_data = RestClient.get('http://pokeapi.co/api/v2/pokemon/?limit=150')
#   # parse that data and javascript object notationify it
#   pokemon_hash = JSON.parse(pokemon_data.body)
#   generation_one = pokemon_hash["results"].slice!(0..151)
#
#
# def pokemon_list(generation_one)
#   generation_one.each do |pokemen|
#     pokemon_link = pokemen["url"]
#     sleep(1)
#     individual_pokemon = RestClient.get(pokemon_link)
#     pokemon = JSON.parse(individual_pokemon.body)
#     Pokemon.create(species: pokemon["forms"]["name"], sprite_image: pokemon["sprite"]["front_default"], battle_type: pokemon["types"])
#   end
# end


pokemon_list(generation_one)

# all pkmn images




# i need to take this data and iterate over it. turning each object into a new instance of Pokemon
# then i can write a method on it in my pokemon model.   and use my pokemon controller to render: json


#------------------------------------------------------------------------------
# def get_character_movies_from_api(character)
#   #make the web request
#   all_characters = RestClient.get('http://www.swapi.co/api/people/')
#   character_hash = JSON.parse(all_characters.body)
#   # iterate over the character hash to find the collection of `films` for the given
#   #   `character`
#   individual_character_info = character_hash["results"].find do |character_info_hash|
#     character_info_hash["name"].downcase == character
#   end
#   # collect those film API urls
#   films_array = individual_character_info["films"]
#   # make a web request to each URL to get the info
#   #  for that film
#   #first_film = RestClient.get(films_array[0])
#   #films_hash = JSON.parse(first_film.body)
#   films_hash = films_array.map {|url| JSON.parse(RestClient.get(url).body)}
#   # return value of this method should be collection of info about each film.
#   #  i.e. an array of hashes in which each hash reps a given film
#   # this collection will be the argument given to `parse_character_movies`
#   #  and that method will do some nice presentation stuff: puts out a list
#   #  of movies by title. play around with puts out other info about a given film.
# end
#   # if don't run through cl, it doesn't downcase name. unless we write downcase, noMethod error
# def parse_character_movies(films_hash)
# #this films_hash works because we define it in the show_character_movies method and call that method in run.rb
#   films_hash.map do |film_info|
#     puts film_info["title"]
#   end
#   # we are putting the return after this end because otherwise it will break the loop
#   return nil
#   # some iteration magic and puts out the movies in a nice list
# end
