import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),

      home: Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),

        ),
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.search, title: "Search"),
            TabData(iconData: Icons.shopping_cart, title: "Basket")
          ],
          onTabChangedListener: (position) {
            setState(() {
            });
          },
        ),
        body:  Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/pop11.jpg'),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
