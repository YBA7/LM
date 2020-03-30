import 'package:e_commercial/screens/categories.dart';
import 'package:e_commercial/screens/loved.dart';
import 'package:e_commercial/screens/options.dart';
import 'package:e_commercial/screens/sepet.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: _buildHomePage(),
    );
  }

  _buildHomePage() {
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              _buildSearchWidgets(screenSize),
              SizedBox(
                height: 1,
              ),
              //Normally ı write code as a function but this puckage gives the error inside the function.In addition,writing code with function is more realible than normally.
              GFCarousel(
                items: imageList.map(
                  (url) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(8, 8, 8, 25),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                          width: 347.0,
                        ),
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {
                  setState(() {});
                },
              ),
              _buildCampaignRow(screenSize),
              _builkampanyasutunu(),
              _buildCampaignList1(),
              _builkampanyasutunu(),
              _buildCampaignList1()
            ],
          ),
        ));
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

  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  _buildCampaignRow(Size screenSize) {
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  child: Text("Kampanya List"),
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  padding: EdgeInsets.fromLTRB(9, 37, 9, 37),
                  splashColor: Colors.grey,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.white)),
                ),
                SizedBox(width: 12),
                RaisedButton(
                  child: Text("Kampanya List"),
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  padding: EdgeInsets.fromLTRB(9, 37, 9, 37),
                  splashColor: Colors.grey,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.white)),
                ),
                SizedBox(width: 12),
                RaisedButton(
                  child: Text("Kampanya List"),
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  padding: EdgeInsets.fromLTRB(8, 37, 8, 37),
                  splashColor: Colors.grey,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.white)),
                ),
                SizedBox(width: 12),
                RaisedButton(
                  child: Text("Kampanya List"),
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  padding: EdgeInsets.fromLTRB(9, 37, 9, 37),
                  splashColor: Colors.grey,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.white)),
                ),
              ],
            ),
          ),
        ));
  }



  _buildCampaignList1() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
            child: InkWell(
                onTap: () {},
                child: Row(children: <Widget>[
                  Card(
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
}
