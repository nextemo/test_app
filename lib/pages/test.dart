import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class OK extends StatefulWidget {
  @override
  _OKState createState() => _OKState();
}

class _OKState extends State<OK> {
  var url = "https://static.thenounproject.com/png/17241-200.png";

  Future getFuture() async {
    final storefire = Firestore.instance;
    QuerySnapshot qSnaps = await storefire.collection("cars").getDocuments();
    return qSnaps.documents;
  }

  Widget buildList(AsyncSnapshot snapshot, int documentName, String fieldName) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        color: Colors.blue,
        child: ListTile(
            title: Row(
              children: <Widget>[
                Expanded(
                  child: Text(snapshot.data[documentName][fieldName]),
                ),
                Expanded(
                  child: Text(snapshot.data[documentName][fieldName]),
                ),
              ],
            ),
            subtitle: Text("subName"),
            leading: Container(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(url),
              ),
            )),
      ),
    ]));
  }

  Widget detail() {
    return MaterialApp(
      home: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            "Hi there",
            style: TextStyle(fontSize: 40.0, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget buildText(
      AsyncSnapshot snapshot, int docName, String brandName, String type) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Text(snapshot.data[docName][fldName]),
//            SizedBox(height: 10,)
            ListTile(
              onTap: ()=>
          detail(),
//                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail())),
              leading:Icon(Icons.directions_car),
              title: Text(snapshot.data[docName][brandName]),
              subtitle: Text(snapshot.data[docName][type]),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: FutureBuilder(
          future: getFuture(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return CircularProgressIndicator();
            else {
              return Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[buildText(snapshot, 0, "brand", "type")],
                  ),
                ),
              );
            }
          }),
    ));
  }
}

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            "Hi there",
            style: TextStyle(fontSize: 40.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
