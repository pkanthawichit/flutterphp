import 'package:flutter/material.dart';

class AddItemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddItemPageState();
  }
}

class AddItemPageState extends State<AddItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Item"),
      ),
      body: Column(
        children: <Widget>[
          Text("hello"),
        ],
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  showAddItemPage() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return AddItemPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: showAddItemPage,
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