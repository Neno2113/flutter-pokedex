



import 'package:pokedex/infrastructure/models/pokeapi/pokeapi_pokemon.dart';

class Pokemon {


  final int id;
  final String name;
  final String wight;
  final String height;
  final List<Types> types;
  final String image;

  Pokemon({
    required this.id, 
    required this.name, 
    required this.wight, 
    required this.height, 
    required this.types, 
    required this.image
  });

}
