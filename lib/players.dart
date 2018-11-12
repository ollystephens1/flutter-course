import 'package:flutter/material.dart';

class Players extends StatelessWidget {
  final List<String> players;

  Players(this.players);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: players.map((player) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text(player)
          ]
        )
      )).toList(),
    );
  }
}