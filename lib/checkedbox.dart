import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: checked(),
  debugShowCheckedModeBanner: false,));
}

class checked extends StatefulWidget{
  @override
  State<checked> createState() => _checkedState();
}

class _checkedState extends State<checked> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Checkbox(value: ischecked,
        onChanged: (bool? value) {
        setState(() {
          if(ischecked){
            ischecked=false;
          }
          else {
            ischecked =true;
          }
        });
        },),
    );
  }
}