import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items"),
      ),
      body: Column(
        children: <Widget>[
          Text("Hello"),
        ],
      ),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter PHP by p.kanthawichit",
      home: MainPage(),
    );
  }
}

void main() {
  runApp(App());
}
// myapp
//fist commot