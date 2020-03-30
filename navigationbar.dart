import 'package:e_commercial/screens/categories.dart';
import 'package:e_commercial/screens/home.dart';
import 'package:e_commercial/screens/loved.dart';
import 'package:e_commercial/screens/options.dart';
import 'package:e_commercial/screens/sepet.dart';
import 'package:flutter/material.dart';
//ürüne tıkladığındaki hali
class Navigationbar extends StatefulWidget {
  @override
  _NavigationbarState createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
   int seciliSayfa = 0;

  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }

  Widget sayfaGoster(int secilisayfa) {
    if (seciliSayfa == 0) {
      return Home();
    } else if (seciliSayfa == 1) {
      return Categories();
    } else if (seciliSayfa == 2) {
      return Sepet();
    } else if (seciliSayfa == 3) {
      return Loved();
    } else if (seciliSayfa == 4) {
      return Options();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfaGoster(seciliSayfa),
      bottomNavigationBar: _buildNavigationBar(),
    );
  }

  _buildNavigationBar() {
    return Container(
      height: 49,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        currentIndex: seciliSayfa,
        onTap: sayfaDegistir,
        fixedColor: Color.fromRGBO(0, 110, 255,.9),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: SizedBox(
              height: 0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sort),
            title: SizedBox(
              height: 0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: SizedBox(
              height: 0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: SizedBox(
              height: 0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert),
            title: SizedBox(
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}