import 'package:flutter/material.dart';
import 'package:inherited_widget_app/data/inherited_data.dart';
import 'package:inherited_widget_app/model/generic_model.dart';
import 'package:inherited_widget_app/model/persona_model.dart';
import 'package:inherited_widget_app/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    GenericModel<PersonaModel> genericModel = GenericModel<PersonaModel>();
    genericModel.setData = PersonaModel(id: 1, nombre: 'Frank');
    return InheritedData(
        data: genericModel,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage(title: 'Inicio'),
        ));
  }
}
