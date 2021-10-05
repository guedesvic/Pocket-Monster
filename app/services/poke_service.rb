class PokeService
  
  class << self
    def call_for_a_pokemon(pokemon)
      response = connection.get("/api/v2/pokemon-form/#{pokemon.downcase}/")
      parse_data(response)
    end

    private

    def connection
      Faraday.new("https://pokeapi.co")
    end
    
    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end

end