import 'package:flutter/material.dart';


const List<String>list=<String>["one","two","three","four"];


void main(){
  runApp(MaterialApp(home: dropdown(),
    debugShowCheckedModeBanner: false,));
}

class dropdown extends StatefulWidget{
  const DropdownButtonExample({super.key});
  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  String dropdownValue=list.first;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("DropdownButton Sample"),),
    body: Center(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 2,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurple,
        ),
        onChanged: (String?value){
          setState(() {
            dropdownValue=value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String drop){
          return DropdownMenuItem(child: child)
        }),
      ),
    ),

  );
  }
}