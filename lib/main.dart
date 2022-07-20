import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// 20-07-2022

class AddItemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddItemPageState();
  }
}

class AddItemPageState extends State<AddItemPage> {
  late TextEditingController nameController;
  String response = "NULL";

  get http => null;
  createItem() async {
    var url = "https://57ans.com/flutterphp/index.php";
    var result = await http.get(url);
    this.response = result.body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Item"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: this.nameController,
            decoration: InputDecoration(labelText: "Name"),
          ),
          RaisedButton(
            onPressed: createItem,
            child: Text("Create"),
          ),
          Text(this.response),
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