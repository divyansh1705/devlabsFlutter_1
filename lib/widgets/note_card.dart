import 'package:flutter/material.dart';

class note_card extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  const note_card({super.key,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(255, 242, 241, 241),
        blurRadius: 13,
        spreadRadius: 0.3,
        offset: Offset(0, 0), 
      ),
    ],
      ),
        child: Card(
          color: Colors.white,
          elevation: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17,top: 20),
                child: Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Colors.black
                ),
        
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17,top: 13),
                child: Text(description,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                  color: Colors.black
                ),
        
                ),
              ),
              SizedBox(height: 13,),
            Container(
              color: const Color.fromARGB(179, 240, 240, 240),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Text(date,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                        color: Colors.black
                      ),
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete))
                ],
              ),
            )
        
              
            ],
          ),
        ),
      // ),
    );
  }
}