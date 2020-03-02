import 'package:flutter/material.dart';
import 'package:inherited_widget_app/data/inherited_data.dart';
import 'package:inherited_widget_app/screens/other_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    InheritedData data = InheritedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              """ID: ${data.data.getData.id}
Nombre: ${data.data.getData.nombre}""",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OtherPage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
