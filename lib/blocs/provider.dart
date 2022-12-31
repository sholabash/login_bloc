import 'package:flutter/material.dart';
import 'bloc.dart';

//instead of using instance this scope is an alternative

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({Key? key, required Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType(aspect: Provider)
            as Provider)
        .bloc;
  }
}
