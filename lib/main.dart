import 'package:flutter/material.dart';

void main() => runApp(new GettingStartedApp());

class GettingStartedApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}

class HomeState extends State<GettingStartedApp> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "GEtting starting",
      theme: new ThemeData(
        primaryColor: Colors.orange,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("My Birthdays Planning"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  _isLoading = !_isLoading;
                });
                print("pressed");
              },
            ),
          ],
        ),
        body: new Center(
          child: _isLoading
              ? new CircularProgressIndicator()
              : new HomeWidget(),
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: 10,
        itemBuilder: (context, rowNumbrer) {
          return new Container(
            padding: new EdgeInsets.all(16.0),
            child: new Column(
              children: <Widget>[
                new Icon(
                  Icons.perm_contact_calendar,
                  color: Colors.blueAccent,
                  size: 25.0,
                ),
                new Text(
                  "Anniversaire",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  "25",
                  style: new TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.accents[3],
                      fontWeight: FontWeight.bold),
                ),
                new Divider(
                  color: Colors.blueAccent,
                )
              ],
            ),
          );
        });
  }
}
