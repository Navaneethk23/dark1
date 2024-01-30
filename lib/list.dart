import 'package:flutter/material.dart';

class list extends StatelessWidget{
  var colors=[Colors.red,Colors.blue,Colors.green,Colors.yellow,Colors.brown,Colors.grey,Colors.teal,Colors.orange];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(children: [
         ListView.builder(itemBuilder: (context,index){
          return Row(
            children: [
              Container(
                height: 80,
                width: 80,
                color: colors[index],
                child: Column(children: [
                  Text("1"),
                  Text("Tuesday"),
                ],),

              ),Container(child: Text("burger"),)
            ],
          );
        },itemCount: colors.length,),
      ]),
    );
  }

}