import 'package:flutter/material.dart';
import 'package:devlabsflutter_1/widgets/new_task_card.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showMessage(BuildContext context, String message,{bool shouldPop = true}){
    if(shouldPop) {
      Navigator.pop(context);
    }

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
    child: Scaffold(
      appBar: AppBar(
        title: Text('Taskify',style: (TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(decoration: BoxDecoration(color: Colors.blueAccent),child: Align(
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Tasks",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16,),
            Row(
              children: [
                OutlinedButton.icon(
                    onPressed: ()=>_showMessage(context, 'Filter Clicked',shouldPop: false),
                    icon:const Icon(Icons.filter_list),
                    label: const Text("Filter",style: TextStyle(color: Colors.black),),
                ),
                const SizedBox(width: 8,),
                OutlinedButton.icon(
                  onPressed: ()=> _showMessage(context, 'Sort Clicked',shouldPop: false),
                  icon: const Icon(Icons.sort),
                  label: const Text("Sort",style: TextStyle(color: Colors.black)),
                ),
                SizedBox(width:8),
                OutlinedButton.icon(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return new_task_pop_up();
                      },
                    );
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("New Task",style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 16),
            TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(text: 'To Do'),
                Tab(text: 'In Progress'),
                Tab(text: 'Done'),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child:TabBarView(
                children: [
                  Center(child:Text('To Do tasks will appear here')),
                  Center(child:Text('In Progress tasks will appear here')),
                  Center(child:Text('Completed tasks will appear here')),
                ],
              )
            )
          ],
        )
      )
    ),
    );
  }
}
