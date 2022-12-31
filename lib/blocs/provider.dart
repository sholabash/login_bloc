import 'package:flutter/material.dart';
import 'bloc.dart';

//instead of using instance this scope is an alternative

class Provider extends InheritedWidget {
  Provider({super.key, required super.child});

  final bloc = Bloc();

  static Provider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>() as Provider;
  }

  static Provider of(BuildContext context) {
    final Provider? result = maybeOf(context);
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(Provider oldWidget) => true;
}
