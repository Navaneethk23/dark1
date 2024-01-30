import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: tables(),
  debugShowCheckedModeBanner: false,));
}


class tables extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Container(decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2,color: Colors.red)

      ),
        child: DataTable(border:TableBorder.all(),columns: [
          DataColumn(
        label: Text("name", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),),),
          DataColumn(
              label: Text("age",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,color: Colors.white),)),
          DataColumn(
              label: Text("salary",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,color: Colors.white),))
        ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text("kiran")),
                DataCell(Text("5")),
                DataCell(Text("25000")),
              ],
            ),
            DataRow(cells: [
              DataCell(Text("abi")),
              DataCell(Text("5")),
              DataCell(Text("25000")),
            ]),
            DataRow(cells: [
              DataCell(Text("kiran")),
              DataCell(Text("5")),
              DataCell(Text("25000")),
            ])


          ],

        ),
      ),
    ),
  );
  }

}