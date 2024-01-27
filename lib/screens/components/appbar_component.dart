import 'package:flutter/material.dart';

class SliverAppBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        flexibleSpace: FlexibleSpaceBar(
    title: Text('New App', style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.w500, letterSpacing: 1.2)),
    ));
  }
}
