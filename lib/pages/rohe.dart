import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            flexibleSpace: FlexibleSpaceBar(),
            expandedHeight: 200.0,
            title: Hero(
              tag: "Heroein",
                child: Icon(Icons.music_note, size: 55.5,),
            ),
            centerTitle: true,
          )
        ],
      ),
    );
  }
}
