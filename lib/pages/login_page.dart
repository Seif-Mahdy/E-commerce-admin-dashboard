import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(helperText: 'Email'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Email cannot be empty!';
                    } else
                      return null;
                  },
                  onSaved: (value) {
                    _email = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(helperText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Password cannot be empty!';
                    } else
                      return null;
                  },
                  onSaved: (value) {
                    _password = value;
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
