// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import '../blocs/provider.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(bloc),
          passwordField(bloc),
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
          ),
          submitButton(bloc),
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

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submiValid,
      builder: (context, snapshot) {
        return TextButton(
          child: Text('Login'),
          style: TextButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.blue,
            // ignore: prefer_const_constructors
            minimumSize: Size(500, 36),
          ),
          onPressed: snapshot.hasData
              ? () {
                  print('hi there');
                }
              : null,
        );
      },
    );
  }
}
