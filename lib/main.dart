import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/hero.dart';
import 'package:test_app/pages/test.dart';

void main() => runApp(
  OK(),
    );

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var url = "https://static.thenounproject.com/png/17241-200.png";
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
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("just a test"),
        ),
        body: Hero(
          tag: "Heroen",
          child: StreamBuilder(
              stream: Firestore.instance.collection("cars").snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError){
                  return Center(
                      child: Text("there's an error, maybe you should turn on your wifi")
                  );
                } else if (!snapshot.hasData) {
                  return Center(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircularProgressIndicator(),
                            SizedBox(height: 20.0,),
                            Text("Please wait...")
                          ],
                        ),
                      )
                  );
                }
                return CustomScrollView(
                  scrollDirection: Axis.vertical,
                  slivers: <Widget>[
                    SliverAppBar(
                      pinned: true,
                      title: Text("Another TEST",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                      expandedHeight: 200.0,
                      flexibleSpace: FlexibleSpaceBar(),
                    ),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 0, "brand"),
                    buildList(snapshot, 1, "brand"),
                    buildList(snapshot, 1, "brand"),
                    buildList(snapshot, 1, "brand"),
                    buildList(snapshot, 1, "brand"),
                    buildList(snapshot, 1, "brand"),
                    buildList(snapshot, 1, "brand"),
                    buildList(snapshot, 1, "brand"),
                    buildList(snapshot, 1, "brand"),
                    buildList(snapshot, 1, "brand"),
                    buildList(snapshot, 1, "brand"),
                    buildList(snapshot, 1, "brand"),
                  ],
                );
              }),
        ),
      ),
    );
  }
}

