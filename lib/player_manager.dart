import 'package:flutter/material.dart';

import './players.dart';

class PlayerManager extends StatefulWidget {
  final String startingPlayer;
  
  PlayerManager(this.startingPlayer);

  @override
    State<StatefulWidget> createState() {
      return _PlayerManagerState();
    }
}

class _PlayerManagerState extends State<PlayerManager> {
  List<String> _players = []; 

  @override
    void initState() {
      super.initState();
      _players.add(widget.startingPlayer);
    }

  @override
    Widget build(BuildContext context) {
      return Column(children: [Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () { 
            setState(() {
              _players.add('Dennis Bergkamp');
            });
          },
          child: Text('Add Products')
        ),
      ),
      Players(_players),
      ]);
    }
}