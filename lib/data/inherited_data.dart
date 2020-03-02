import 'package:flutter/material.dart';
import 'package:inherited_widget_app/model/generic_model.dart';

class InheritedData extends InheritedWidget {
  final GenericModel data;

  InheritedData({
    Key key,
    @required this.data,
    @required Widget child,
  })  : assert(data != null),
        assert(child != null),
        super(key: key, child: child);

  static InheritedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedData>();
  }

  @override
  bool updateShouldNotify(InheritedData old) => data != old.data;
}
