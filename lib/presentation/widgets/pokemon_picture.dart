


import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PokemonPicture extends StatelessWidget {
  const PokemonPicture({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ 
        Center(
          child: Container(
          width: screenWidth,
          height: 220,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white12,
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.white10]

            )
          ),
          // child: Lottie.asset('assets/animations/pokeballAnimation.json'),

          
        ),
      ),
      Container(
        color: Colors.black.withOpacity(0.4), // Adjust the opacity level here
      ),
      Positioned(
        top: 50,
        left: 90,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const FadeInImage(
          height: 180,
          fit: BoxFit.contain,
          placeholder: NetworkImage('https://i.imgur.com/rQhoo07.gif'),
          image: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png'),
          ),
        ),
      ),
      
    ]
    );
  }
}

