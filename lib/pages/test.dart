import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OK extends StatefulWidget {
  @override
  _OKState createState() => _OKState();
}

class _OKState extends State<OK> {
  var url = "https://static.thenounproject.com/png/17241-200.png";
  var car = "";
  final storefire = Firestore.instance;
  void getStream()async{
    final stream = await storefire.collection("cars").getDocuments();
    if(stream.documents != null){
      print(stream.documents[0]["brand"]);
      print(stream.documents[0]["type"]);
      print(stream.documents[1]["brand"]);
      print(stream.documents[1]["type"]);
      print(stream.documents[2]["brand"]);
      print(stream.documents[2]["type"]);
      print(stream.documents[3]["brand"]);
      print(stream.documents[3]["type"]);
      setState(() {
        car = stream.documents[0]["brand"];
      });

    }
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
                )
            ),
          ),
        ]));
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            title: Text("Hi there"),
          ),


        ],
      )
    );
  }
}
