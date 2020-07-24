import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        CircleAvatar(
        backgroundColor: Colors.lightBlueAccent,
          radius: 60,
          child: Text('Your Logo',style: TextStyle(color: Colors.white),),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Your E-commerce app name',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Admin Dashboard',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20,),
        CircularProgressIndicator(),
        ],
      ),

    ),);
  }
}
