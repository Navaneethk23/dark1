import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
void main(){
  runApp(MaterialApp(home: svg(),
  debugShowCheckedModeBanner: false,));
}

class svg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: Container(
child: SvgPicture.asset("Assests/svg1/21852411_sysadmin_03.svg"),

   ),
 );
  }

}