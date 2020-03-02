import 'package:flutter/material.dart';
import 'package:inherited_widget_app/data/inherited_data.dart';
import 'package:inherited_widget_app/screens/another_page.dart';

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    InheritedData data = InheritedData.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Otra Pagina'),
        ),
        body: Center(
          child: Text(
            """ID: ${data.data.getData.id}
Nombre: ${data.data.getData.nombre}""",
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AnotherPage()),
            );
          },
          child: Icon(Icons.add),
        ));
  }
}
