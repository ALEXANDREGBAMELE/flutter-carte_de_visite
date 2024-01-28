import 'package:flutter/material.dart';
import 'package:ma_carte_de_visite/screens/visit.card_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma carte de visite',
      home: VisitCard(),
    );
  }
}
