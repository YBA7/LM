import 'package:e_commercial/screens/categories.dart';
import 'package:e_commercial/screens/home.dart';
import 'package:e_commercial/screens/options.dart';
import 'package:e_commercial/screens/sepet.dart';
import 'package:flutter/material.dart';

class Loved extends StatefulWidget {
  @override
  _LovedState createState() => _LovedState();
}

class _LovedState extends State<Loved> {
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
      appBar: AppBar(
        title: Text(
          "A  MARKASI",
          style: TextStyle(
            color: Color.fromRGBO(0, 88, 255, 1),
            fontSize: 25,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: _buildLovedPage(),
    );
  }

  _buildLovedPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: <Widget>[
                _buildSearchWidgets(screenSize),
                SizedBox(
                  height: 10,
                ),
                //Normally ı write code as a function but this puckage gives the error inside the function.In addition,writing code with function is more realible than normally.

                _builkampanyasutunu(),
                SizedBox(
                  height: 10,
                ),
                _buildCampaignList1(),
                SizedBox(
                  height: 10,
                ),
                _builkampanyasutunu(),
                SizedBox(
                  height: 10,
                ),
                _buildCampaignList1(),
                SizedBox(
                  height: 10,
                ),
                _builkampanyasutunu(),
                SizedBox(
                  height: 10,
                ),
                _buildCampaignList1(),
                SizedBox(
                  height: 10,
                ),
                _builkampanyasutunu(),
                SizedBox(
                  height: 10,
                ),
                _buildCampaignList1(),
                SizedBox(
                  height: 10,
                ),
                _builkampanyasutunu(),
                SizedBox(
                  height: 10,
                ),
                _buildCampaignList1(),
              ],
            ),
          )),
    );
  }

  _buildSearchWidgets(Size screenSize) {
    return Container(
        margin: EdgeInsets.only(left: 18, right: 10, top: 10),
        width: screenSize.width,
        child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        alignLabelWithHint: true,
                        counterStyle: TextStyle(color: Colors.blue),
                        icon: Icon(Icons.search),
                        hintText: '',
                        labelText: 'Ürün katalog veya marka ismi giriniz ',
                      ),
                      validator: (String value) {
                        return value.contains('@')
                            ? 'Do not use the @ char.'
                            : null;
                      },
                    ),
                  ),
                ],
              ),
            )));
  }

  _builkampanyasutunu() {
    return Row(
      children: <Widget>[
        Text(
          "Kampanya Listesi 1      ",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 30),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          width: 19,
        ),
        GestureDetector(
          onTap: () {
            //  Navigator.of(context).pop(); //deneme amaçlı çalışıyor mu diye
          },
          child: Text(
            "Tümü",
            style: TextStyle(
                color: Color.fromRGBO(0, 110, 255, 1),
                decoration: TextDecoration.underline,
                decorationColor: Color.fromRGBO(0, 110, 255, 1),
                decorationStyle: TextDecorationStyle.wavy,
                fontSize: 19),
          ),
        ),
        Icon(
          Icons.arrow_right,
          color: Colors.blue,
        ),
      ],
    );
  }

  _buildCampaignList1() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
            child: InkWell(
                onTap: () {},
                child: Row(children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // child: Image.network(this.imageUrl),
                          width: 55,
                          height: 110,
                        ),
                        SizedBox(height: 8.0),
                        Column(children: <Widget>[
                          Text(
                            " Apple Zabazingo",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                          SizedBox(width: 8.0),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("2.400,15",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 16)),
                                SizedBox(width: 8.0),
                                Text("3.000,00",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        decoration:
                                            TextDecoration.lineThrough)),
                              ])
                        ]),
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // child: Image.network(this.imageUrl),
                          width: 55,
                          height: 110,
                        ),
                        SizedBox(height: 8.0),
                        Column(children: <Widget>[
                          Text(
                            " Apple Zabazingo",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                          SizedBox(width: 8.0),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("2.400,15",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 16)),
                                SizedBox(width: 8.0),
                                Text("3.000,00",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        decoration:
                                            TextDecoration.lineThrough)),
                              ])
                        ]),
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // child: Image.network(this.imageUrl),
                          width: 55,
                          height: 110,
                        ),
                        SizedBox(height: 8.0),
                        Column(children: <Widget>[
                          Text(
                            " Apple Zabazingo",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                          SizedBox(width: 8.0),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("2.400,15",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 16)),
                                SizedBox(width: 8.0),
                                Text("3.000,00",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        decoration:
                                            TextDecoration.lineThrough)),
                              ])
                        ]),
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // child: Image.network(this.imageUrl),
                          width: 55,
                          height: 110,
                        ),
                        SizedBox(height: 8.0),
                        Column(children: <Widget>[
                          Text(
                            " Apple Zabazingo",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                          SizedBox(width: 8.0),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("2.400,15",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 16)),
                                SizedBox(width: 8.0),
                                Text("3.000,00",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        decoration:
                                            TextDecoration.lineThrough)),
                              ])
                        ]),
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // child: Image.network(this.imageUrl),
                          width: 55,
                          height: 110,
                        ),
                        SizedBox(height: 8.0),
                        Column(children: <Widget>[
                          Text(
                            " Apple Zabazingo",
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                          SizedBox(width: 8.0),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("2.400,15",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 16)),
                                SizedBox(width: 8.0),
                                Text("3.000,00",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        decoration:
                                            TextDecoration.lineThrough)),
                              ])
                        ]),
                      ],
                    ),
                  ),
                ]))));
  }
}
