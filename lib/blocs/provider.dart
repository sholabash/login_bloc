import 'package:flutter/material.dart';
import 'bloc.dart';

//instead of using instance this scope is an alternative

class Provider extends InheritedWidget {
  // Provider({Key? key, required Widget child}) : super(key: key, child: child);
  final bloc = Bloc();
  Provider({Key? key, required Widget child}) : super(key: key, child: child);

  static Bloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>()!.bloc;
  }

  bool updateShouldNotify(_) => true;
}
