
import 'package:flutter/material.dart';
import 'password.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 35),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Text("Taskify",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    ),
                ),
              ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text("Create new account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.w500
                ),
              
              ),
              
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Or",
                  style: TextStyle(fontSize: 18),
                  ),
                  TextButton(onPressed: (){}, 
                  child: Text("Log In",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                  
                  ),
                ],
              ),
              PasswordField(
                 controller: _passwordController, hint: 'Password'),
              Padding(
                padding: const EdgeInsets.only(top:15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top : 13),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(onPressed: (){},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                      ),
                  ),
                
                  child: Text("Register",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),),
                  
                  ),
                ),
              )
            ],
          ),
      ))
    );

  }
}