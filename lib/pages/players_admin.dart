import 'package:flutter/material.dart';
import './home.dart';
import './player_create.dart';
import './player_list.dart';

class PlayersAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('All Players'),
                onTap: () => Navigator.pushReplacementNamed(context, '/'),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Manage players'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Create Product',
                icon: Icon(Icons.list),
              ),
              Tab(
                text: 'My Products',
                icon: Icon(Icons.shopping_cart),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PlayerCreatePage(),
            PlayerListPage(),
          ],
        ),
      ),
    );
  }
}
