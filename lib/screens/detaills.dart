import 'package:flutter/material.dart';

import '../ressources/consts_global.dart';

class Detaills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bacgroundColor,
      appBar: AppBar(
        title: Text(
          'En savoir plus',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
        child: ListView(
      shrinkWrap: true,
      children: <Widget>[
        Container(alignment: Alignment.center, child: circleAvatar),
        SizedBox(
          height: 20.0,
        ),
        Card(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textResumeCartDeVisite,
              textAlign: TextAlign.center,
              style: styleTextResumeCartDeVisite,
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            iconEmail,
            SizedBox(
              width: 10.0,
            ),
            Text(
              textEmail,
              style: styletextEmail,
            ),
          ],
        )
      ],
    ));
  }
}
