



import 'package:pokedex/domain/entities/pokemon.dart';
import '../models/pokeapi/pokeapi_pokemon.dart';

class PokeMapper {

  static Pokemon pokeapiToEntity( PokeApiPokemon pokeapiPokemon ) {



    return Pokemon(
      id: pokeapiPokemon.id, 
      name: pokeapiPokemon.name, 
      wight: pokeapiPokemon.weight.toString(), 
      height: pokeapiPokemon.height.toString(), 
      types: pokeapiPokemon.types, 
      image: pokeapiPokemon.sprites.frontDefault
    );
  }



}