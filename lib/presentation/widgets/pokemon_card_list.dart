
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class Pokemon extends StatelessWidget {
  const Pokemon({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/pokemon/$index'),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FadeInImage(
          height: 180,
          fit: BoxFit.contain,
          placeholder: const NetworkImage('https://i.imgur.com/rQhoo07.gif'),
          image: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$index.png'),
        ),
      ),
    );
  }
}