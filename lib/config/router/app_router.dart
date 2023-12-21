


import 'package:go_router/go_router.dart';
import 'package:pokedex/presentation/screen/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/pokemon/:id',
      builder: (context, state){
        final pokemonId = state.pathParameters['id'] ?? '1';

        return PokemonSingleCard(pokemonId: int.parse(pokemonId) );
      },
    )
  
  ] 

);