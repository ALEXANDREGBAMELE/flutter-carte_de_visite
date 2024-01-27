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
          Text(
            'Hello world!',
            style: TextStyle(fontSize: 80.0),
          ),
          Text(
            'Hello world!',
            style: TextStyle(fontSize: 80.0),
          ),
          Text(
            'Hello world!',
            style: TextStyle(fontSize: 80.0),
          ),
          Text(
            'Hello world!',
            style: TextStyle(fontSize: 80.0),
          ),
          Text(
            'Hello world!',
            style: TextStyle(fontSize: 80.0),
          ),
          Text(
            'Hello world!',
            style: TextStyle(fontSize: 80.0),
          ),
          Text(
            'Hello world!',
            style: TextStyle(fontSize: 80.0),
          ),
          Text(
            'Hello world!',
            style: TextStyle(fontSize: 80.0),
          ),
          Text(
            'Hello world!',
            style: TextStyle(fontSize: 80.0),
          )
        ])
      ],
    );
  }
  /*Widget _buildBody(BuildContext context){
        return Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              circleAvatar,
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    nomCartDeVisite,
                    style: styleNomCartDeVisite
                  ),
                ),
              ),
              Card(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    descriptionCartDeVisite,
                    textAlign: TextAlign.center,
                    style: styleDescriptionCartDeVisite,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Detaills();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textButtonCartDeVisite,
                    style: styleTextButtonCartDeVisite,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }*/
}
