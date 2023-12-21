

import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {

  static String pokeAPI = dotenv.env['POKEAPI'] ?? 'https://pokeapi.co/api/v2/pokemon';

}