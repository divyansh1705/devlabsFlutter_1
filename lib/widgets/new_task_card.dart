
import 'package:flutter/material.dart';
import 'package:devlabsflutter_1/screens/home/task.dart';
import 'package:devlabsflutter_1/screens/home/task_provider.dart';
import 'package:provider/provider.dart';



class new_task_pop_up extends StatefulWidget {
  const new_task_pop_up({super.key});

  @override
  State<new_task_pop_up> createState() => _new_task_pop_upState();
}

class _new_task_pop_upState extends State<new_task_pop_up> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String selectedStatus = 'To Do';

  List<String> statusOptions = ['To Do', 'In Progress', 'Done'];
  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          width: double.infinity,
          height: 530,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("New Task",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                )
                ,),
                SizedBox(
                  height: 19,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text("Title",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 6,),
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    hintText: "Enter Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 19,),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text("Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 6,),
                SizedBox(
                  height: 140,
                  child: TextField(
                    controller: _descriptionController, 
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      
                      hintText: "Enter Description",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19),
                      )
                    ),
                  ),
                  ),
                  SizedBox(height: 13,),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(
                      "Status",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedStatus,
                        items: statusOptions.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedStatus = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextButton(
                        onPressed: () {
                            Navigator.pop(context);
                        }
                        ,
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold
                          
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextButton(
                        
                        onPressed: () {

                    final title = _titleController.text.  trim();
                    final description = _descriptionController.text.trim();

                    if (title.isEmpty || description.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please fill in all fields')),
                      );
                      return;
                    }

                    final newTask = Task(
                      title: title,
                      description: description,
                      status: selectedStatus,
                      date: DateTime.now().toString().substring(0, 11),
                    );

                    // Add to provider
                    final taskProvider = Provider.of<TaskProvider>(context, listen: false);
                    taskProvider.addTask(newTask);

                    Navigator.pop(context);

                        },
                        style: ButtonStyle(

                          
                        ),
                        child: Text(
                          'Create',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
    );
  }
}