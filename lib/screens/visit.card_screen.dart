import 'package:flutter/material.dart';
import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:ma_carte_de_visite/screens/components/appbar_component.dart';
import 'package:ma_carte_de_visite/screens/components/drawer_component.dart';
import 'package:ma_carte_de_visite/screens/detaills_screen.dart';
import 'package:ma_carte_de_visite/screens/visit.card_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../ressources/consts_global.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    iconTheme:
    IconThemeData(color: Colors.white);
    return Scaffold(
      drawer: DrawerComponent(),
      body: _buildBody(context),
      floatingActionButton: FabCircularMenuPlus(
          fabOpenIcon: Icon(FontAwesomeIcons.handshake),
          ringDiameter: 210,
          ringWidth: 56,
          ringColor: Colors.white70,
          fabOpenColor: Colors.white70,
          fabCloseColor: Colors.blueAccent,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.home, color: Colors.black), onPressed: ()=>_launchUrl('mailto:gbamelealexandre02@gmail.com')),
            IconButton(
                icon: Icon(
                  FontAwesomeIcons.envelope,
                  color: const Color.fromARGB(255, 12, 38, 50),
                ),
                onPressed: ()=>_launchUrl('mailto:gbamelealexandre02@gmail.com')),
            IconButton(
                icon: Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                onPressed: ()=>_launchUrl('http://www.facebook.com')),
            IconButton(
                icon: Icon(FontAwesomeIcons.twitter, color: Colors.blue[900]),
                onPressed: ()=>_launchUrl('http://www.twitter.com')),
            IconButton(
                icon: Icon(
                  FontAwesomeIcons.github,
                  color: Colors.black,
                ),
                onPressed: ()=>_launchUrl('http://www.github.com')),
          ]),
    );
  }

  void _launchUrl(String url) async {
  try {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } catch (e) {
    print('Error launching URL: $e');
  }
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
              child: Text(nomCartDeVisite, style: styleNomCartDeVisite),
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
          Card(
            color: Colors.blue[900],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(nomCartDeVisite, style: styleNomCartDeVisite),
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
          Card(
            color: Colors.blue[900],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(nomCartDeVisite, style: styleNomCartDeVisite),
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
