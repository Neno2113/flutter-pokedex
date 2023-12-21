import 'package:pokedex/domain/entities/pokemon.dart';




abstract class PokemonDataSource {

  Future<List<Pokemon>> getPokemonByPage({ int page = 0, int offset = 0});

}