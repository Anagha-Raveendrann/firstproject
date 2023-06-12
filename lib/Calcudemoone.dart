import 'package:flutter/material.dart';

class Caa extends StatefulWidget {
  const Caa({Key? key}) : super(key: key);

  @override
  State<Caa> createState() => _CaaState();
}

class _CaaState extends State<Caa> {

  int a=0;
  int b=0;
  String operator='';
  int calculator=0;
  String equal='';

  void

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
               Container(
                 height: 50,
                 width: 50,

               ),



          Row(
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  a=1;

                });
              }, child: Text("1")),

              ElevatedButton(onPressed: (){

                setState(() {
                  a=2;
                });
              }, child: Text("2")),
              ElevatedButton(onPressed: (){
                setState(() {
                  a=3;
                });
              }, child: Text("3")),
            ],
          ),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  a=4;
                });
              }, child: Text("4")),
              ElevatedButton(onPressed: (){
                setState(() {
                  a=5;
                });
              }, child: Text("5")),
              ElevatedButton(onPressed: (){
                setState(() {
                  a=6;
                });
              }, child: Text("6")),
            ],
          ),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    a=7;
                  });
                }, child: Text("7")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    a=8;
                  });
                }, child: Text("8")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    a=9;
                  });
                }, child: Text("9")),
              ],
            ),
                 Row(
                   children: [
                     IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                     IconButton(onPressed: (){}, icon: Icon(Icons.horizontal_split))

                   ],
                 )
    ]
      ),

    );
  }
}
