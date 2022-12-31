import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(Bloc()),
          passwordField(Bloc()),
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        // ignore: prefer_const_constructors
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          // ignore: prefer_const_constructors
          decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email Address',
            errorText: snapshot.hasError ? '${snapshot.error}' : null,
          ),
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        // ignore: prefer_const_constructors
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          // ignore: prefer_const_constructors
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorText: snapshot.hasError ? '${snapshot.error}' : null,
          ),
        );
      },
    );

    // ignore: prefer_const_constructors
  }

  Widget submitButton() {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.blue,
        // ignore: prefer_const_constructors
        minimumSize: Size(500, 36),
      ),
      child: Text('Login'),
      onPressed: () {},
    );
  }
}
