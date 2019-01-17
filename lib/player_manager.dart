import 'package:flutter/material.dart';

import './players.dart';
import './player_control.dart';

class PlayerManager extends StatefulWidget {
  final Map<String, String> startingPlayer;

  PlayerManager({this.startingPlayer});

  @override
  State<StatefulWidget> createState() {
    return _PlayerManagerState();
  }
}

class _PlayerManagerState extends State<PlayerManager> {
  List<Map<String, String>> _players = [];

  @override
  void initState() {
    if (widget.startingPlayer != null) {
      _players.add(widget.startingPlayer);
    }
    super.initState();
  }

  void _addPlayer(Map<String, String> player) {
    setState(() {
      _players.add(player);
    });
  }

  void _deletePlayer(int index) {
    setState(() {
      _players.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: PlayerControl(_addPlayer),
      ),
      Expanded(
        child: Players(_players, deletePlayer: _deletePlayer),
      ),
    ]);
  }
}
