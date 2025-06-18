import 'package:flutter/material.dart';
import 'package:devlabsflutter_1/widgets/custom_field.dart';
class buttons extends StatelessWidget{
  final String label;
  buttons({super.key,
    required this.label
  }
   );

  @override
  Widget build(BuildContext context) {

    return SizedBox(
                  width: double.infinity,
                  child: TextButton(onPressed: (){},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                      ),
                  ),
                
                  child: Text(label,style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),),
                  
                  ),
    )
    ;

  }
}

class text_input_fields extends StatelessWidget {
  final String label;
  const text_input_fields({super.key,
  required this.label
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
              hintText: label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(19)
              )
              
            ),
              );
  }
}