//FutureBuilder(
//future: getFuture(),
//builder: (context, snapshot) {
//if (!snapshot.hasData) return CircularProgressIndicator();
//return CustomScrollView(
//scrollDirection: Axis.vertical,
//slivers: <Widget>[
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
//showListTile(snapshot, 0, "model"),
//showListTile(snapshot, 1, "model"),
//showListTile(snapshot, 2, "model"),
//showListTile(snapshot, 3, "model"),
//],
//);
//},
//),

