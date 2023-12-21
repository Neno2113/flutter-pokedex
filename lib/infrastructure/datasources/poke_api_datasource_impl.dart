import 'package:dio/dio.dart';
import 'package:pokedex/config/config.dart';
import 'package:pokedex/domain/datasources/pokemon_datasource.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/infrastructure/mappers/pokeapi_mapper.dart';

import '../models/pokeapi/pokeapi_pokemon.dart';
import '../models/pokeapi/pokeapi_pokemons_response.dart';



class PokeAPIDatasource implements PokemonDataSource {

  final dio = Dio(BaseOptions(
    baseUrl: Environment.pokeAPI
  ));

  @override
  Future<List<Pokemon>> getPokemonByPage({int page = 0, int offset = 0}) async {
    
    final response = await dio.get('/pokemon', queryParameters: {
      'limit': 60,
      'offset': 0
    });
    final pokemonsResponse = PokeApiResponse.fromJson( response.data );

    final pokemonsData = <Future<Response>> [];

    for (final result in pokemonsResponse.results) {
      pokemonsData.add( dio.get(result.url));
    }

    final pokemonResponses = await Future.wait( pokemonsData );

    final pokemons = <Pokemon>[];

    for (final pokeapiResponse in pokemonResponses) {
      final pokeApiPokemon = PokeApiPokemon.fromJson(pokeapiResponse.data);
      final pokemon = PokeMapper.pokeapiToEntity(pokeApiPokemon);
      pokemons.add( pokemon );
    }

  
    return pokemons;
  }


}
