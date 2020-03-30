import 'package:flutter/material.dart';

void main() => runApp(MaterialApp());

class Sepet extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<Sepet> {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
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
      body: _buildSepetPage(),
    );
  }

  _buildSepetPage() {
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
                _buildMyCart(),
                SizedBox(
                  height: 100,
                ),
                _buildSepetOnayla(),
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

  _buildMyCart() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          width: 399,
          height: 275,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 11),
                Text(
                  "  My Cart",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 11),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap:
                            () {}, //burası avatar olabilir anlamadım o zamana burayı avatar olarak değiştir.
                        child: Icon(
                          Icons.add_box,
                          size: 50,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: <Widget>[
                        Text(
                          "An Item 1000 gr and detail",
                          style: TextStyle(fontSize: 19),
                        ),
                        Text(
                          "30,14",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.remove_circle,
                          color: Colors.grey,
                        )),
                    Text(
                        " 1 "), //burayı gestructor ile yazarsın sonra fonksiyonu yazar artırır azaltırssın $number gibi
                    SizedBox(
                      width: 3,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.grey,
                        ))
                  ],
                ),
                SizedBox(height: 30),
                Divider(
                  thickness: 2,
                  height: 2,
                  indent: 5,
                ),
                SizedBox(height: 50),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap:
                            () {}, //burası avatar olabilir anlamadım o zamana burayı avatar olarak değiştir.
                        child: Icon(
                          Icons.add_box,
                          size: 50,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: <Widget>[
                        Text(
                          "An Item 1000 gr and detail",
                          style: TextStyle(fontSize: 19),
                        ),
                        Text(
                          "30,14",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.remove_circle,
                          color: Colors.grey,
                        )),
                    Text(
                        " 1 "), //burayı gestructor ile yazarsın sonra fonksiyonu yazar artırır azaltırssın $number gibi
                    SizedBox(
                      width: 3,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildSepetOnayla() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 399,
              height: 70,
              child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 20),
                        Icon(Icons.looks_5, color: Colors.green, size: 30),
                        SizedBox(width: 10),
                        Text("₺ 19,90"),
                        SizedBox(width: 90),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Sepeti Onayla",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          icon: Icon(Icons.credit_card),
                          onPressed: () {/* Your code */},
                        )
                      ])))
        ]);
  }
}
