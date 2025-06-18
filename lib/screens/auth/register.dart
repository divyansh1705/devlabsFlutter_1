
import 'package:flutter/material.dart';
import 'package:devlabsflutter_1/widgets/custom_field.dart';


class registrationpage extends StatelessWidget{
   registrationpage({super.key});

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
              padding: EdgeInsetsGeometry.only(top: 10),
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
              text_input_fields(label: "Username"),
              Padding(
                padding: const EdgeInsets.only(top:15),
                child: 
              text_input_fields(label: "Email"),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15),
                child: 
              text_input_fields(label: "Password"),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15),
                child: 
              text_input_fields(label: "Confirm Password"),
              ),
              Padding(
                padding: const EdgeInsets.only(top : 13),
                child: buttons(label: "Register")
              )
            ],
          ),
      ))
    );

  }
}