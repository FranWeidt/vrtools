import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vrtools/domain/entities/vrproject_entity.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          //padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('About'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Projects'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('People'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Consumer<Future<VRProjectEntity>>(
        builder: (context, cache, _) {
          return Center(
            child: FutureBuilder<VRProjectEntity>(
              future: cache,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: [
                      Image.network(snapshot.data.vRTools.siteURL +
                          snapshot.data.vRTools.imageURL),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          "Projects",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      for (var project in snapshot.data.projects)
                        Image.network(
                            snapshot.data.vRTools.siteURL + project.imageSrc),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                // By default, show a loading spinner.
                return CircularProgressIndicator();
              },
            ),
          );
        },
      ),
    );
  }
}
