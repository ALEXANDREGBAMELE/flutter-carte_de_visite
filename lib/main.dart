import 'package:flutter/material.dart';
import 'package:ma_carte_de_visite/screens/portefolio_screen.dart';
import 'package:ma_carte_de_visite/screens/visit.card_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    precacheImage(AssetImage('assets/images/beau-jeune-afro-americain-tshirt-polo-rose-fococlipping-standard.png'), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ma carte de visite',
      home: VisitCard(),
      /*home: PortefolioScreen(),*/
    );
  }
}
