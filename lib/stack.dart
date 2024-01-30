import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: stack(),
  debugShowCheckedModeBanner: false,));
}

class stack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Stack(
         children: [
           Container(
             color: Colors.orange,
           height: 500,
             width: 500,),
           Positioned(
             child: Container(
               color: Colors.grey,),
             height: 400, width: 400,
             left: 70,top:40 ,
           ),
           Positioned(
             child: Container(
               color: Colors.teal,),
             height: 400,
             width: 500,
           ),

         ],
       ),
     ),
   );
  }

}