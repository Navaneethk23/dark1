import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: dissmible(),
    debugShowCheckedModeBanner: false,
  ));
}

class dissmible extends StatelessWidget {
  var data = <String>[
    "data 1",
    "data 2",
    "data 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Dismissible(background: Container(color: Colors.red,),
              secondaryBackground: Container(color: Colors.green,),
              key: ValueKey(data),
              child: ListTile(
                title: Center(
                  child: Text(data[index]),
                ),
              ),
            );
          }),
    );
  }
}
