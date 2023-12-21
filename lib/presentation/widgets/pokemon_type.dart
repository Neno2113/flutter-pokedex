import 'package:flutter/material.dart';

class PokemonType extends StatelessWidget {
  const PokemonType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Type:', 
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey.shade500
            ) 
          ,),
          const Text(
            'Grass/Poison',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600
            ),

          ),
        ],
      ),
    );
  }
}