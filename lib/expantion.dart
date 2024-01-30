import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expantion(),
  ));
}

class expantion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: Column(
         children: [
           Row(
             children: [
               Flexible(flex: 1,
                 child: Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.red,
                   ),
                 ),
               ),
           Flexible(  flex: 3,
             child: Container(
               height: 100,
               width: 100,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(40),
                 color: Colors.deepPurpleAccent,
               ),
             ),
           ),
               Flexible(flex: 6,
                 child: Container(
                   height: 100,
                   width: 400,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.red
                   ),
                 ),
               ),
               
             ],
           ),
         ],
       ),
     ),
   );
  }

}