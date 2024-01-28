import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ma_carte_de_visite/ressources/consts_global.dart';

class SliverAppBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        pinned: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: bacgroundColor,
        expandedHeight: 200.0,
        flexibleSpace: FlexibleSpaceBar(
            background: Container(
          child: Stack(children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Ingenieur en informatique',
                    style: GoogleFonts.oxanium(
                        textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                        )
                    )),
              ),
            ),
            /*Positioned(
                top: 0,
                right: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/images/beau-jeune-afro-americain-tshirt-polo-rose-fococlipping-standard.png',
                ),
              ),*/
            Image.asset(
              'assets/images/beau-jeune-afro-americain-tshirt-polo-rose-fococlipping-standard.png',
            ),
          ]),
        )));
  }
}
