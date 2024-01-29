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
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
            Image.asset(
              'assets/images/beau-jeune-afro-americain-tshirt-polo-rose-fococlipping-standard.png',
            ),
          ]),
        );
  }
}
