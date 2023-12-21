
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/infrastructure/datasources/poke_api_datasource_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemons_provider.g.dart';

@riverpod
Future<List<Pokemon>> pokemons(PokemonsRef ref) async {
  
  final pokemons = await PokeAPIDatasource().getPokemonByPage();

  return pokemons;

}




@riverpod
class PokeApiRepositoryProvider extends _$PokeApiRepositoryProvider {

  @override
  PokeAPIDatasource build() => PokeAPIDatasource();
  
}