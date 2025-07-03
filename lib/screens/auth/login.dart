import 'package:flutter/material.dart';
import 'password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[100],
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
            child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(" Welcome back!",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("Sign in to Continue"),
                SizedBox(height: 40,),

                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.mail),
                  ),
                ),
                SizedBox(
                    height:20
                ),
                PasswordField(controller: 
                _passwordController, hint: 'Password'),
                Row(
                  children: [
                    Checkbox(value: _rememberMe, onChanged: (value) {
                      setState(() {
                        _rememberMe = value ?? false;
                      });
                    }),
                    Text("Remember me"),
                  ],
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                   String email = _emailController.text;
                   String password = _passwordController.text;

                   if(email == "dev@gmail.com" && password =="1234"){
                     print("Login Succesful!");
                   }
                   else{
                     print("INVALID CREDENTIALS!");
                   }
                  }, child: Text("Sign In")),
                )
              ],
            )
        )

    );
  }
}

