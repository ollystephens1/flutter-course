import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/players_admin.dart';
import './pages/home.dart';
import './pages/player.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _players = [];

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
    return MaterialApp(
      // home: AuthPage(),
      routes: {
        '/': (BuildContext context) =>
            HomePage(_players, _addPlayer, _deletePlayer),
        '/admin': (BuildContext context) => PlayersAdminPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }

        if (pathElements[1] == 'player') {
          final int index = int.parse(pathElements[2]);

          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => PlayerPage(
                  _players[index]['title'],
                  _players[index]['imageUrl'],
                ),
          );
        }
        return null;
      },
    );
  }
}
