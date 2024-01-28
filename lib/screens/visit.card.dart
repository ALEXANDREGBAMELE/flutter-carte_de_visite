import 'package:flutter/material.dart';

import 'package:ma_carte_de_visite/screens/components/appbar_component.dart';
import 'package:ma_carte_de_visite/screens/components/drawer_component.dart';
import 'package:ma_carte_de_visite/screens/detaills.dart';
import 'package:ma_carte_de_visite/screens/visit.card.dart';
import '../ressources/consts_global.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerComponent(),
      /*backgroundColor: bacgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Ma carte de visite',
          style: TextStyle(
            color: Colors.white,
            //fontSize: 20.0,*
          ),
        ),
        elevation: 0.0,
      ),*/
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBarComponent(),
        SliverList.list(children: <Widget>[
          Card(
                color: Colors.blue[900],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    nomCartDeVisite,
                    style: styleNomCartDeVisite
                  ),
                ),
              ),
              Card(
                color: Colors.blue[900],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textResumeCartDeVisite,
                    textAlign: TextAlign.center,
                    style: styleDescriptionCartDeVisite,
                  ),
                ),
              ),
        ])
      ],
    );
  }
}
