import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      Test(),
    );

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  Widget buildList(snap, int documentName, String fieldName) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        color: Colors.blue,
        child: ListTile(
          title: Row(
            children: <Widget>[
              Expanded(
                child: Text(snap.data.documents[documentName][fieldName]),
              ),
              Expanded(
                child: Text(snap.data.documents[documentName][fieldName]),
              ),
            ],
          ),
          subtitle: Text("subtitle"),
          leading: Icon(Icons.add),
        ),
      ),
    ]));
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("just a test"),
        ),
        body: StreamBuilder(
            stream: Firestore.instance.collection("cars").snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text("Loading...");
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

                  SliverAppBar(
                    pinned: true,
                    title: Text("Another TEST2",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(),
                  ),
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

                  SliverAppBar(
                    pinned: true,
                    title: Text("Another TEST2",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(),
                  ),
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

                  SliverAppBar(
                    pinned: true,
                    title: Text("Another TEST2",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(),
                  ),
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

                  SliverAppBar(
                    pinned: true,
                    title: Text("Another TEST2",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(),
                  ),
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

                  SliverAppBar(
                    pinned: true,
                    title: Text("Another TEST2",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(),
                  ),
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

                  SliverAppBar(
                    pinned: true,
                    title: Text("Another TEST2",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(),
                  ),
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

                  SliverAppBar(
                    pinned: true,
                    title: Text("Another TEST2",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(),
                  ),
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

                  SliverAppBar(
                    pinned: true,
                    title: Text("Another TEST2",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(),
                  ),
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
    );
  }
}

