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
  var title2 = [
    "(220 reviewed)",
    "(160 reviewed)",
    "(400 reviewed)",
  ];

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
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return rooms(index);
          }, childCount: images.length))
        ],
      ),
    );
  }

  Widget categoryBuild() {
    return Container(
      height: 150,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.only(
            left: 60,
          )),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Icon(
                      Icons.hotel,
                      color: Colors.white,
                    ),
                    Text(
                      "hotel",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                color: Colors.red,
                height: 100,
                width: 100,
              )),
          Padding(padding: const EdgeInsets.only(left: 30)),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Icon(
                      Icons.restaurant,
                      color: Colors.white,
                    ),
                    Text(
                      "restaurant",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                color: Colors.green,
                height: 100,
                width: 100,
              )),
          Padding(padding: const EdgeInsets.only(left: 30)),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Icon(
                      Icons.local_cafe,
                      color: Colors.white,
                    ),
                    Text(
                      "cafe",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                color: Colors.yellow,
                height: 100,
                width: 100,
              )),
        ],
      ),
    );
  }

  Widget rooms(index) {
    return Container(
      height: 400,
      width: 400,
      child: Column(
        children: [
          Stack(children: [
            Image(
              image: AssetImage("${images[index]}"),
              height: 200,
              width: 200,
            ),
            Positioned(child: Container(
              height: 25,width: 25,
              color: Colors.white,
                child: Text("\$40",style: TextStyle(color: Colors.black),)),
            right: 20,bottom: 20,),
            Positioned(child: Icon(Icons.favorite,color: Colors.white,),
            height: 25,width: 25,
            right: 15,top: 15,)
          ]),
          Text(
            "${title[index]}",
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
          Text("${title1[index]}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Text("${title2[index]}"),
            ],
          ),
        ],
      ),
    );
  }
}
