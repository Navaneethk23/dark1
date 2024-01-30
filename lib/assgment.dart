import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: chat(),
    debugShowCheckedModeBanner: false,
  ));
}

class chat extends StatelessWidget {
  var image = [
    "Assests/Iconsss/joe.jpeg",
    "Assests/Iconsss/chander.jpeg",
    "Assests/Iconsss/ross.jpeg",
    "Assests/Iconsss/monica.jpg",
    "Assests/Iconsss/rachel.jpg",
    "Assests/Iconsss/pebe.jpg",
  ];
  var title = ["joe", "chandler", "ross", "monica", "rachel", "pebe"];
  var title1 = [
    "good to know",
    "this be a while",
    "its over",
    "im the shef",
    "i working in fasion feild",
    "im leaving in america"
  ];
  var title2 = [
    "today",
    "yesterday",
    "27/1/24",
    "today",
    "29/10/24",
    "21/10/24"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            expandedHeight: 100,
            floating: true,
            pinned: true,
            actions: [
              ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.add,size: 15,),
                      Text(
                        "add new",style: TextStyle(fontSize:10),
                      )
                    ],
                  )),
            ],
            flexibleSpace: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "conversation",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                SizedBox(height: 5.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ClipRRect(borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "search",
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return chts(index);
          }, childCount: title.length))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.chat),label:"chats" ),
          BottomNavigationBarItem(icon:Icon(Icons.local_movies),label: "channel"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "account")
        ],
      ),
    );
  }

  Widget chts(index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image[index]),
      ),
      title: Text(
        "${title[index]}",
        style: TextStyle(fontSize:15,fontWeight: FontWeight.w600),
      ),
      subtitle: Text("${title1[index]}"),
      trailing: Text("${title2[index]}",style:TextStyle(fontWeight: FontWeight.w600),),
    );
    
  }
}
