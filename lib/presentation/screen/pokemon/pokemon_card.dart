import 'package:flutter/material.dart';
import 'package:pokedex/presentation/widgets/widgets.dart';

class PokemonSingleCard extends StatelessWidget {

  final int pokemonId;

  const PokemonSingleCard({super.key, required this.pokemonId});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 10),
        child: Container(
          height: screenHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.green.shade300,
              width: 2.5
            )
          ),
          child:  Column(
            children: [
              const PokemonAppBar(),
              PokemonPicture(screenWidth: screenWidth),
              const Center(
                child: Text(
                'Bulbasaur', 
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600
                ),),
              ),
              const SizedBox(height: 40,),
              const PokemonInfo(),
              const SizedBox(height: 60,),

              const PokemonType()




            ],
          ),
        ),
      )
    );
  }
}



