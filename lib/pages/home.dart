import 'package:flutter/material.dart';

import '../player_manager.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> players;
  final Function addPlayer;
  final Function deletePlayer;

  HomePage(this.players, this.addPlayer, this.deletePlayer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Players'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: PlayerManager(players, addPlayer, deletePlayer),
    );
  }
}
