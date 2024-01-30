import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bottomnavigator(),
  debugShowCheckedModeBanner: false,));
}

class bottomnavigator extends StatefulWidget {
  @override
  State<bottomnavigator> createState() => _bottomnavigatorState();
}

class _bottomnavigatorState extends State<bottomnavigator> {
  var screen=[
    Text("home"),
    Text("category"),
    Text("account"),
    Text("cart"),
    Text("home"),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottomnavigator"),
      ),
      bottomNavigationBar: ClipRRect(borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          currentIndex: index,selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.category),label: "category"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "account"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "cart"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),],
        ),
      ),
      body:Center(child: screen[index],),
    );
  }
}
