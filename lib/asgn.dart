import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: asgn(),
    debugShowCheckedModeBanner: false,
  ));
}

class asgn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_back),
              trailing: Icon(Icons.menu),
            ),
            CircleAvatar(
              backgroundImage: AssetImage(
                "Assests/Iconsss/tom.jpg",
              ),
              radius: 75,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 10,
                ),
                FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.lightBlue,
                ),
                SizedBox(
                  width: 10,
                ),
                FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.blue,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "chromicle",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic),
                ),
                Text("@amFOSS"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Mobile App Developer and Open",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(
                  "source enthusiastic",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 30,),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: const[
                        Profiletile(txt: "privacy", icon:Icon(Icons.privacy_tip)),
                        Profiletile(txt: "Purchase History", icon:Icon(Icons.history)),
                        Profiletile(txt: "Help & Support", icon:Icon(Icons.help))
                      ],
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

class Profiletile extends StatelessWidget {
  const Profiletile({
    Key? key,
    required this.txt,
    required this.icon,
  }) : super(key: key);
  final String txt;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
        BoxShadow(
          color: Colors.grey,
        ),
      ]),
      child: ListTile(
        title: Text(
          txt,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        leading:icon,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
