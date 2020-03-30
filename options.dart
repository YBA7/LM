import 'package:e_commercial/utililies/constant.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp());

class Options extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<Options> {
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
      body: _buildSettingsPage(),
    );
  }

  _buildSettingsPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _builLogOutWidgets(screenSize);
          } else if (index == 1) {
            return _buildSettingsCard(screenSize);
          } else if (index == 2) {
            return _buildCommentsCard(screenSize);
          } else if (index == 3) {
            return _buildAdressCard(screenSize);
          } else if (index == 4) {
            return _buildGiftCard(screenSize);
          } else if (index == 5) {
            return _buildCustomerServicesCard(screenSize);
          } else if (index == 6) {
            return _buildOrderCard(screenSize);
          }
        },
      ),
    );
  }

  _builLogOutWidgets(Size screenSize) {
    return InkWell(
        onTap: () {
          //   Navigator.of(context).pushNamed(
          //       Constant.ROUTE_CATEGORIES); //bu bir denemedir ciddiye almayın
        },
        child: Container(
          margin: EdgeInsets.all(12.0),
          width: screenSize.width,
          child: Card(
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(150.0),
              ),
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "   Yağız AKBAYIR",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.redAccent,
                      )
                    ],
                  ))),
        ));
  }

  _buildSettingsCard(Size screenSize) {
    return InkWell(
        onTap: () {
          //      Navigator.of(context).pushNamed(Constant.ROUTE_PRODUCT_DETAIL);  //bu bir denemedir ciddiye almayın
        },
        child: Container(
            height: 65,
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Card(
                color: Color.fromRGBO(0, 80, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      "  Ayarlar",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    )
                  ],
                ))));
  }

  _buildCommentsCard(Size screenSize) {
    return InkWell(
        onTap: () {
          //      Navigator.of(context).pushNamed(Constant.ROUTE_PRODUCT_DETAIL);  //bu bir denemedir ciddiye almayın
        },
        child: Container(
            height: 65,
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
            child: Card(
                color: Color.fromRGBO(0, 80, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      "  Yorumlarım",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    )
                  ],
                ))));
  }

  _buildAdressCard(Size screenSize) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
              Constant.ROUTE_CATEGORIES); //bu bir denemedir ciddiye almayın
        },
        child: Container(
            height: 65,
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
            child: Card(
                color: Color.fromRGBO(0, 80, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      "  Adreslerim",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    )
                  ],
                ))));
  }

  _buildGiftCard(Size screenSize) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
              Constant.ROUTE_CATEGORIES); //bu bir denemedir ciddiye almayın
        },
        child: Container(
            height: 65,
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
            child: Card(
                color: Color.fromRGBO(0, 80, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      "  Hediye Çeklerim",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    )
                  ],
                ))));
  }

  _buildCustomerServicesCard(Size screenSize) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
              Constant.ROUTE_CATEGORIES); //bu bir denemedir ciddiye almayın
        },
        child: Container(
            height: 65,
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
            child: Card(
                color: Color.fromRGBO(0, 80, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      "  Müşteri Hizmetleri",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    )
                  ],
                ))));
  }

  _buildOrderCard(Size screenSize) {
    return InkWell(
        onTap: () {
          //      Navigator.of(context).pushNamed(Constant.ROUTE_PRODUCT_DETAIL);  //bu bir denemedir ciddiye almayın
        },
        child: Container(
            height: 65,
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
            child: Card(
                color: Color.fromRGBO(0, 80, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      "  Siparişlerim",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    )
                  ],
                ))));
  }
}
