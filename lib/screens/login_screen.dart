import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/components/rounded_tf.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'loginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedTF(
              hintText: 'Enter your email address',
              onChanged: (value) {
                //Do something with the user input.
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            RoundedTF(
              hintText: 'Enter your password',
              onChanged: (value) {
                //Do something with the user input.
              },
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              buttonColor: Colors.lightBlueAccent,
              buttonText: 'Log In',
                onPressed: () {
                  //Implement login functionality.
                }
            )
          ],
        ),
      ),
    );
  }
}
