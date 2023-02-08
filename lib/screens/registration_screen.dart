import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/components/rounded_tf.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final auth = FirebaseAuth.instance;

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
            const SizedBox(
              height: 48.0,
            ),
            RoundedTF(
                hintText: 'Enter your email address',
                onChanged: (value) {
                  email = value;
                },
                isObscureText: false,
                keyboardType: TextInputType.emailAddress),
            const SizedBox(
              height: 8.0,
            ),
            RoundedTF(
                hintText: 'Enter your password',
                onChanged: (value) {
                  password = value;
                },
                isObscureText: true,
                keyboardType: TextInputType.text),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              buttonText: 'Register',
              buttonColor: Colors.blueAccent,
              onPressed: () async {
                try {
                  final newUser = await auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                  if (newUser != null) {
                    Navigator.pushNamed(context, ChatScreen.id);
                  }
                } catch (error) {
                  print(error);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
