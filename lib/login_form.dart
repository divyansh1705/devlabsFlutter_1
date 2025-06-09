import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Email: "),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            hintText: "Enter your email",
          ),
        ),
        const SizedBox(height:20),
        Text("Password"),
        TextField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Enter your password",
          ),
        ),
        const SizedBox(height: 20,),

        Row(children: [
          Checkbox(value: rememberMe, onChanged: (value){
            setState(() {
              rememberMe= value ?? false;
            });
          },
          ),
          const Text('Remember me'),
        ],),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed:(){
          print("Email: ${emailController.text}");
          print("Password :${passwordController.text}");
          print("Remember me : $rememberMe");
        }, child: Text("Sign In")
        ),

      ],
    );
  }
}