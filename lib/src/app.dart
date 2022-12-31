import 'package:flutter/material.dart';
import '../screens/login_screen.dart';

class App extends StatelessWidget {
  build(BuildContext) {
    return MaterialApp(
      title: 'Login Me In',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
