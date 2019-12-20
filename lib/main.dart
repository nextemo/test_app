import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/pages/hero.dart';
import 'package:test_app/pages/rohe.dart';
import 'package:test_app/pages/test.dart';

void main() => runApp(
      Begin(),
    );

class Begin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final fStore = Firestore.instance;

  Future getFuture() async {
    QuerySnapshot qSnap = await fStore.collection("models").getDocuments();
    return qSnap.documents;
  }

  Future getFuture2() async {
    QuerySnapshot qSnap = await fStore.collection("cars").getDocuments();
    return qSnap.documents;
  }

  Widget showListTile(AsyncSnapshot snapshot, int docIndex, String fieldName) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Container(
        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
        color: Colors.blue,
        child: ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          leading: Icon(Icons.date_range),
          title: Text(
            snapshot.data[docIndex][fieldName],
            style: TextStyle(fontSize: 25.5, color: Colors.white),
          ),
          subtitle: Text("subtitle here..."),
        ),
      ),
    ]));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.directions_car, size: 50.0,),
          centerTitle: true,
          bottom: TabBar(
              tabs: [
            Tab(
              child: Row(children: <Widget>[
                Icon(Icons.airplanemode_active),
                SizedBox(
                  width: 15.0,
                ),
                Text("Vehicle"),

              ]),
            ),

            Tab(
              child: Row(
                children: <Widget>[
                  Icon(Icons.music_note),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("Lyrics"),
                ],
              ),
            )
          ]),
        ),
        body: TabBarView(children: [
          FutureBuilder(
            future: getFuture(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return CircularProgressIndicator();
              return CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: <Widget>[
//                  SliverAppBar(
//                    pinned: true,
//                    elevation: 5.0,
//                    expandedHeight: 150.0,
//                    flexibleSpace: FlexibleSpaceBar(),
//                    backgroundColor: Colors.red,
//                    leading: Icon(
//                      Icons.directions_car,
//                      size: 40.0,
//                    ),
//                    title: Text(
//                      "Car Models",
//                      style: TextStyle(fontSize: 30.0, color: Colors.white),
//                    ),
//                  ),
                  showListTile(snapshot, 0, "model"),
                  showListTile(snapshot, 1, "model"),
                  showListTile(snapshot, 2, "model"),
                  showListTile(snapshot, 3, "model"),
                ],
              );
            },
          ),

          FutureBuilder(
            future: getFuture2(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return CircularProgressIndicator();
              return CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: <Widget>[
//                  SliverAppBar(
//                    pinned: true,
//                    elevation: 5.0,
//                    expandedHeight: 150.0,
//                    flexibleSpace: FlexibleSpaceBar(),
//                    backgroundColor: Colors.red,
//                    leading: Icon(
//                      Icons.directions_car,
//                      size: 40.0,
//                    ),
//                    title: Text(
//                      "Car Models",
//                      style: TextStyle(fontSize: 30.0, color: Colors.white),
//                    ),
//                  ),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),
                  showListTile(snapshot, 0, "brand"),

                ],
              );
            },
          ),

        ]),
      ),
    ));
  }
}

//FutureBuilder(
//future: getFuture(),
//builder: (context, snapshot) {
//if (!snapshot.hasData) return CircularProgressIndicator();
//return CustomScrollView(
//scrollDirection: Axis.vertical,
//slivers: <Widget>[
//SliverAppBar(
//pinned: true,
//elevation: 5.0,
//expandedHeight: 150.0,
//flexibleSpace: FlexibleSpaceBar(),
//backgroundColor: Colors.red,
//leading: Icon(
//Icons.directions_car,
//size: 40.0,
//),
//title: Text(
//"Car Models",
//style: TextStyle(fontSize: 30.0, color: Colors.white),
//),
//),
//
//showListTile(snapshot, 0, "model"),
//showListTile(snapshot, 0, "model"),
//showListTile(snapshot, 0, "model"),
//showListTile(snapshot, 0, "model"),
//showListTile(snapshot, 0, "model"),
//showListTile(snapshot, 0, "model"),
//showListTile(snapshot, 0, "model"),
//showListTile(snapshot, 0, "model"),
//showListTile(snapshot, 0, "model"),
//showListTile(snapshot, 0, "model"),
//],
//);
//},
//),
