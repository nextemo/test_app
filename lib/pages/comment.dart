import 'package:flutter/material.dart';

class CommentNow extends StatefulWidget {
  @override
  _CommentNowState createState() => _CommentNowState();
}

class _CommentNowState extends State<CommentNow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Feedback"),
          centerTitle: true,
          flexibleSpace: FlexibleSpaceBar(),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: TextField(

                  ),
                ),

                Container(
                  child: RaisedButton(
                    elevation: 5.0,
                      color: Colors.blue,
                    child: Text("Send Comment",
                    style: TextStyle(
                      fontSize: 15.5,
                      color: Colors.white
                    ),),
                    onPressed: null),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
