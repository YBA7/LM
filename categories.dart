import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  BuildContext context;

  get sayfaDegistir => null;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: 40.0, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
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
      body: _buildCategoriesPage(),
    );
  }

  _buildCategoriesPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildSearchWidgets(screenSize);
          } else if (index == 1) {
            return Text("   KATEGORİLER",
                style: TextStyle(fontSize: 30, color: Colors.grey));
          } else if (index == 2) {
            return _buildCategories(screenSize);
          } else if (index == 3) {
            return _buildCategories(screenSize);
          } else if (index == 4) {
            return _buildCategories(screenSize);
          } else if (index == 5) {
            return _buildCategories(screenSize);
          } else if (index == 6) {
            return _buildCategories(screenSize);
          } else if (index == 7) {
            return _buildCategories(screenSize);
          }
        },
      ),
    );
  }

  _buildSearchWidgets(Size screenSize) {
    return Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 10),
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
                    padding: const EdgeInsets.fromLTRB(5, 0, 2, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        alignLabelWithHint: true,
                        counterStyle: TextStyle(color: Colors.blue),
                        icon: Icon(Icons.search),
                        hintText: '',
                        labelText: 'Ürün katalog veya marka ismi giriniz ',
                      ),
                      onSaved: (String value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
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

  _buildCategories(Size screenSize) {
    return Container(
        height: 73,
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.0),
            ),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  width: 6.0,
                ),
                Text(
                  "KATEGORİ ADI",
                  style: TextStyle(fontSize: 30),
                )
              ],
            )));
  }
}
