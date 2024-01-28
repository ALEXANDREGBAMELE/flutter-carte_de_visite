import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:ma_carte_de_visite/screens/components/drawer_component.dart';


class PortefolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerComponent(),
      body: Carousel(
          height: 350.0,
            width: 350,
            type: "slideswiper",
            indicatorType: "bar",
            arrowColor: Colors.black,
            axis: Axis.horizontal,
            showArrow: true,
            children: [
              Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    "Page 1",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Page 2",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    "Page 3",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              Container(
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    "Page 4",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "Page 5",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            ],
        ),
      );
    
  }
}
