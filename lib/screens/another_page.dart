import 'package:flutter/material.dart';
import 'package:inherited_widget_app/data/inherited_data.dart';

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    InheritedData data = InheritedData.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Otra Pagina Mas'),
        ),
        body: Center(
          child: Text(
            """ID: ${data.data.getData.id}
Nombre: ${data.data.getData.nombre}""",
          ),
        ));
  }
}
