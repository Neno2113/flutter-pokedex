import 'package:flutter/material.dart';




class PokemonAppBar extends StatelessWidget {
  const PokemonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.grey,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade800
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 3, 1),
              child: Text('#001', 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
            ),
          ),
    
          Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.green.shade300,
            ),
          ),
          
    
    
    
        ],
      ),
    );
  }
}