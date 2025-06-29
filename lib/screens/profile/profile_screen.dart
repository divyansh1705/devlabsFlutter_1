import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        useDefaultSemanticsOrder: false,
        title: const Text("PROFILE",style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 24,
        ),),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(radius:55,backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(
          'https://cdn-icons-png.flaticon.com/512/4140/4140037.png'),
          ),

          const SizedBox(height: 25),

          Card(
            elevation: 4,
            child: Padding(padding: const EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Name : Devlabs Summer Time",
                style: TextStyle(fontSize: 16),),
                SizedBox(height: 18,),
                Text('Email : devlabs@gmail.com',style: TextStyle(fontSize: 16),),
                SizedBox(height: 18,),
                Text('Phone number : 978#4557#9',style: TextStyle(fontSize: 16,)),
                SizedBox(height: 18,),
                Text('Address : 1234566 Main Street '),
                SizedBox(height: 18,),
                Text("Id number: 56789993333"),
              ],
            ),)
          ),
        ],
      ),),
      backgroundColor: Colors.cyanAccent,
    );
  }
}