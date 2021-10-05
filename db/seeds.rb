require 'pokemon'
require 'httparty'

def fetch_pokemon
    url = "https://pokeapi.co/api/v2/pokemon?limit=10000"
    response = HTTParty.get(url)
    new_response = response.parsed_response
    fetch_abilities(response["results"])
end


fetch_pokemon