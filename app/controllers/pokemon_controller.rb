class PokemonController < TrainersBackofficeController
  def index
    pokemon = params[:pokemon]
    @pokemon = PokeFacade.get_a_pokemon(pokemon)
  end
end
