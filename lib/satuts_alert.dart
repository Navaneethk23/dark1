import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: AlertDialogTutorial(title: 'Status Alert',),));
}

class AlertDialogTutorial extends StatelessWidget {
  final String title;

  const AlertDialogTutorial({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Alert Dialog Tutorial'),
              content: const Text('Welcome to AllAboutFlutter.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
