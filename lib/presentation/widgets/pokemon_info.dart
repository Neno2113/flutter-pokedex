


import 'package:flutter/material.dart';

class PokemonInfo extends StatelessWidget {
  const PokemonInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Weight', style: TextStyle(
                fontSize: 22,
                color: Colors.grey.shade500
              ),),
              Text('Height', style: TextStyle(
                fontSize: 22,
                color: Colors.grey.shade500
              ),),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('6.9 kg', style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600
                // color: Colors.grey.shade500
              ),),
              Text('0.7 m', style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600
              ),),
            ],
          ),
        ],
      ),
    );
  }
}

