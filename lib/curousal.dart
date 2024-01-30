import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: curousal(),));
}

class curousal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       child: CarouselSlider(
         items: [
           Image(image: AssetImage("Assests/Iconsss/joe.jpeg")),
           Image(image: AssetImage("Assests/Iconsss/monica.jpg")),


         ], options: CarouselOptions(
         aspectRatio: 2.0,
         enlargeCenterPage: true,
         enableInfiniteScroll: false,
         initialPage: 2,
         autoPlay:true,
       ),
       ),
     ),
   );
  }
  
}