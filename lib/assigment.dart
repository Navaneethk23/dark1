import 'package:dark/list.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: navigator(),
  debugShowCheckedModeBanner: false,));
}

class navigator extends StatefulWidget {
  @override
  State<navigator> createState() => _navigatorState();
}

class _navigatorState extends State<navigator> {
  var screen1 = [
    Text("home"),
    list(),
    Text("cart"),
    Text(
      "account",
    ),
    Text("account")
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
          bottom: TabBar(
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                text: "lunch",
              ),
              Tab(
                text: "cart",
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"home"),
            BottomNavigationBarItem(icon: Icon(Icons.lunch_dining),label: "lunch"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "shopping"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "account"),
          ],
        ),body: Center(child: screen1[index]),
      ),
    );
  }
}
