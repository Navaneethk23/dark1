import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
void main(){
  runApp(MaterialApp(home: bottomNvigator(),
  debugShowCheckedModeBanner: false,));
}

class bottomNvigator extends StatefulWidget{
  @override
  State<bottomNvigator> createState() => _bottomNvigatorState();
}
class _bottomNvigatorState extends State<bottomNvigator> {
  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, "Home", Colors.blue, labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    TabItem(Icons.search, "Search", Colors.orange, labelStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    TabItem(Icons.layers, "Reports", Colors.red, circleStrokeColor: Colors.black),
    TabItem(Icons.notifications, "Notifications", Colors.cyan),
  ]);

  @override
  Widget build(BuildContext context) {
   return Scaffold(

   );
  }
}