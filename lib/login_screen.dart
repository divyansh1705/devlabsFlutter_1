import 'package:flutter/material.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Login")
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: LoginForm(),),
        
    );
  }
}