import 'package:flutter/material.dart';

class PlayerControl extends StatelessWidget {
  final Function addPlayer;

  PlayerControl(this.addPlayer);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addPlayer({'title': 'Dennis Bergkamp', 'imageUrl': 'assets/food.jpg'});
      },
      child: Text('Add Product'),
    );
  }
}
