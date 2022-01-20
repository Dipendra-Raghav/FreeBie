import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              FlatButton.icon(
                color: Colors.white,
                onPressed: () {
                  print('Google sign in...');
                },
                icon: Icon(EvaIcons.google),
                label: Text('Sign in with google'),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/logo.png'),
                fit: BoxFit.fitHeight,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
      ),
    );
  }
}
