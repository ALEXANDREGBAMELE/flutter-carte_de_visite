import 'package:flutter/material.dart';
import 'package:ma_carte_de_visite/screens/portefolio_screen.dart';
import 'package:ma_carte_de_visite/screens/visit.card_screen.dart';

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
            children: <Widget>[
              ListTile(title: Text('Accueil', style: TextStyle(fontSize: 18,),
              ),
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> VisitCard())),
              ),
              
              ListTile(title: Text('Portefolio', style: TextStyle(fontSize: 18,),
              ),
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> PortefolioScreen())),
              )
              ],
          ))
        ],
      ),
    );
  }
}
