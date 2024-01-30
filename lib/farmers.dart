import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: farmers(),
  debugShowCheckedModeBanner: false,));
}

class farmers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverAppBar(backgroundColor: Colors.green,
          expandedHeight: 100,
          actions: [
            Row(
              children: [
                Icon(Icons.location_on,color: Colors.white,),
                Text("kochi",style: TextStyle(color: Colors.white),),
              ],
            ),
          ],
          flexibleSpace: ListView(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("FRAMERS FRESH ZONE",style: TextStyle(color: Colors.white,fontSize: 15),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "search",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: kiran(),
        ),
        ],


      ),
    );
  }

  Widget kiran() {
    return Container(
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.all(3),
                padding: const EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
              border: Border.all(color: Colors.green),

            ),
                child: Text("vegetable")),
            SizedBox(width: 20,),
            Text("Fruits"),
            SizedBox(width: 20,),
            Text("Exotics cuts")
          ],
        ),
      ],) ,
    );
  }


}