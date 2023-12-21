
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pokedex/presentation/widgets/widgets.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PokeDex'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          fit: StackFit.expand,
          children: [
            MasonryGridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: 150,
              itemBuilder: (context, index) {
        
                if( index == 1 ){
                  return  Column(
                    children: [
                      const SizedBox(height: 30,),
                      PokemonCard( index: index + 1,)
                    ],
                  );
                }
                
                return PokemonCard(index: index + 1,);
              },
            ),
          ]
        ),
      ),
    );
  }
}

class PokemonCard extends StatelessWidget {

  final int index;

  const PokemonCard({
    super.key,
    required this.index 
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final random = Random();

    return FadeInUp(
      from:  random.nextInt(100) + 80,
      delay: Duration(milliseconds: random.nextInt(450) + 0),
      child: Stack(
        
        children: [

          Image.asset('assets/images/pokeball-card.png',
          color: Colors.white30,
          colorBlendMode:BlendMode.modulate ),
          
          Container(
            decoration: BoxDecoration(
            border: Border.all(
              color: color.primary,
              width: 1.0
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              topRight: Radius.circular(20)
            )
          ),
          child: Pokemon(index: index),
        ),
        ]
      ),
    );
  }
}

