import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    iconTheme:
    IconThemeData(color: Colors.white);
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Container(
                alignment: Alignment.center, child: Text('Menu title')),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[Text('Accueil'), Text('Portefolio')],
          ))
        ],
      ),
    );
  }
}
