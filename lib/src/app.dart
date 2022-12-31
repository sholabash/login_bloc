import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import 'package:login_bloc/blocs/provider.dart';

class App extends StatelessWidget {
  // ignore: annotate_overrides
  build(context) {
    return Provider(
      child: MaterialApp(
        title: 'Login Me In',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
