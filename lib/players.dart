import 'package:flutter/material.dart';

class Players extends StatelessWidget {
  final List<Map<String, String>> players;
  final Function deletePlayer;

  Players(this.players, {this.deletePlayer});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(players[index]['imageUrl']),
          Text(players[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.pushNamed<bool>(
                      context,
                      '/player/' + index.toString(),
                    ).then((bool val) {
                      if (val != null) {
                        deletePlayer(index);
                      }
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: players.length,
    );
  }
}
