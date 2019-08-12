import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget get topSection => Container(
        height: 100.0,
        color: Colors.yellow[300],
      );

  Widget get videoDescription => Expanded(
        child: Container(
          height: 70.0,
          padding: EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "#firstjohnny",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              Text("Video title and some other stuff"),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.music_note,
                    size: 15.0,
                  ),
                  Text(
                    "Artist name - Album - Song",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              /*Container(
                height: 10.0,
                color: Colors.green[300],
                margin: EdgeInsets.only(top: 10)),
            Container(
                height: 10.0,
                color: Colors.green[300],
                margin: EdgeInsets.only(top: 10)),
            Container(
                height: 10.0,
                color: Colors.green[300],
                margin: EdgeInsets.only(top: 10)),
              */
            ],
          ),
        ),
      );

  Widget get actionsToolbar => Container(
        width: 100.0,
        color: Colors.red[300],
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List<Widget>.generate(
                5,
                (_) => Container(
                      width: 60,
                      height: 60,
                      color: Colors.blue[300],
                      margin: EdgeInsets.only(top: 20.0),
                    ))),
      );

  Widget get middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            videoDescription,
            actionsToolbar,
          ],
        ),
      );

  Widget get bottomSection => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(
            5,
            (index) => Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.purple[300],
                )),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          topSection,
          middleSection,
          bottomSection,
        ],
      ),
    );
  }
}
