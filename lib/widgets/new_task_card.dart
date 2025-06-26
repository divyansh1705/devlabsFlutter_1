
import 'package:flutter/material.dart';
import 'custom_field.dart';


class new_task_pop_up extends StatefulWidget {
  const new_task_pop_up({super.key});

  @override
  State<new_task_pop_up> createState() => _new_task_pop_upState();
}

class _new_task_pop_upState extends State<new_task_pop_up> {
  String selectedStatus = 'To Do';

  List<String> statusOptions = ['To Do', 'In Progress', 'Done'];
  @override
  Widget build(BuildContext context) {
    return Dialog(
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
                text_input_fields(label: "Enter Title"),
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
                        onPressed: () {}
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
                        },
                        style: ButtonStyle(
                          // backgroundColor: WidgetStatePropertyAll(Colors.blue),
                          
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