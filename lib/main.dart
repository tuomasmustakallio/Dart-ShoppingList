import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'SHOPPING LIST';

    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Color(0XFF76BE37),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), // here the desired height
          child: AppBar(
              backgroundColor: Color(0XFF3CB236),
              shadowColor: Colors.transparent,
              centerTitle: true,

              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      FlatButton(
                        padding: EdgeInsets.only(right:120),
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text("CART"),
                        shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                      ),
                      FlatButton(
                        padding: EdgeInsets.only(left:120),
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text("RECIPES"),
                        shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
                      ),
                    ],

                  )
                ],
              )
          ),
        ),
        body: Center(
        ),

      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                size: 60,
              ),
              label: 'Menu',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 60,
              ),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 60,
              ),
              label: 'Notifications',
              backgroundColor: Colors.white,
            ),
          ],
          selectedItemColor: Color(0XFF3CB236),
          unselectedItemColor: Color(0XFF3CB236),
        ),
      ),
    ),
    );
  }
}
class ShopModel {
  final String categoryName;
  final List<Product> products;
  double position = 0;
  ShopModel({this.categoryName, this.products});
}

class Product {
  final String name;
  final int price;
  Product(this.name, this.price);
}

