import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: hotel(),
    debugShowCheckedModeBanner: false,
  ));
}

class hotel extends StatelessWidget {
  var images = [
    "Assests/Iconsss/room1.jpg",
    "Assests/Iconsss/room2.jpg",
    "Assests/Iconsss/room3.jpg"
  ];
  var title = ["Awesome room in kakkandad", "peacful room ", "beautiful room "];
  var title1 = ["kakkangad kochi", "kakkangad kochi", "kakkangad kochi"];
  var title2 = ["(220 reviewed)", "(160 reviewed)", "(400 reviewed)",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            expandedHeight: 180,
            floating: true,
            pinned: true,
            leading: Icon(Icons.menu),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            ],
            flexibleSpace: ListView(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "HOTEL HOME",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, bottom: 20, top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "search your location",
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: categoryBuild(),
          ),


        ],
      ),
    );
  }

  categoryBuild() {
    return Container(
      height: 100,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [SizedBox(width: 15,),
          Category(
            icons: Icons.hotel,
            title: "hotel",
            background: Colors.orange,
          ),
          SizedBox(width: 15,),
          Category(
            icons: Icons.restaurant,
            title: "restaurant",
            background: Colors.blue,
          ),SizedBox(width: 15,),
          Category(
            icons: Icons.coffee,
          title: "cafe",
          background: Colors.green,)
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final IconData icons;
  final String title;
  final Color?background;

   const Category({
    Key?key,
    required this.icons,
    required this.title,
    required this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: background,
            borderRadius: const BorderRadius.all(Radius.circular(5.0))
        ),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(10.0),
        width: 100,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icons, color: Colors.white,),
            const SizedBox(height: 5.0,),
            Text(title, style: const TextStyle(color: Colors.white
            ),
            ),
          ],
        ),
      ),

    );
  }
}