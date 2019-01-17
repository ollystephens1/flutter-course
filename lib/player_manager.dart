import 'package:flutter/material.dart';

import './players.dart';
import './player_control.dart';

class PlayerManager extends StatelessWidget {
  final List<Map<String, String>> players;
  final Function addPlayer;
  final Function deletePlayer;

  PlayerManager(this.players, this.addPlayer, this.deletePlayer);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: PlayerControl(addPlayer),
      ),
      Expanded(
        child: Players(players, deletePlayer: deletePlayer),
      ),
    ]);
  }
}
