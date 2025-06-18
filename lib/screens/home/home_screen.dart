import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        useMaterial3: false,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showMessage(BuildContext context, String message){
    Navigator.pop(context);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hamburger Menu'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(decoration: BoxDecoration(color: Colors.cyan),child: Align(
              alignment: Alignment.bottomLeft,
              child:Text('Welcome!',style: TextStyle(color: Colors.white,fontSize: 24),
              ) ,
            ),
            ),
            ListTile(
              leading: Icon(Icons.task),
              title: Text("Tasks"),
              onTap: ()=> _showMessage(context, 'Tasks selected'),
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text('Notes'),
              onTap: () => _showMessage(context, 'Notes selected'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(" PROFILE "),
              onTap: () => _showMessage(context, 'Profile Selected'),
            ),
            Spacer(),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red,),
              title: Text('Logout',style: TextStyle(color: Colors.red),),
              onTap: () => _showMessage(context, 'Logged out!'),
            )
          ],
        ),
      ),
      body: const Center(
        child: Text('Swipe From Left  or Tap the top-left icon to open the menu.',style: TextStyle(color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold),),
      ),
    );
  }
}
