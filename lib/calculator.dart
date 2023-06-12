import 'package:flutter/material.dart';

class  addd extends StatefulWidget {
  const addd({Key? key}) : super(key: key);

  @override
  State<addd> createState() => _adddState();
}

class _adddState extends State<addd> {
  int a=0;
  int b=0;
  String operator='';
  int calculator =0;
  String equal ='';
  void operation(String ope) {
    setState(() {
      operator = ope;
      b = a;
      a =0;
      equal = '$b $operator';
    });
  }

  void cal(){
    setState(() {
      calculator = a+b;
      equal='$equal = $calculator';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text("Calculator"),
      centerTitle: true,
      backgroundColor: Colors.greenAccent,
    ),

      body: Container(

            child: Column(
              children: [
                SizedBox(
                  height: 70,

                ),

                  Row(
                children: [
                  Text(equal)
                 // Text(calculator.toString())
      //             OutlinedButton(
      //             style: ElevatedButton.styleFrom(
      //             primary: Colors.white,
      //               onPrimary: Colors.white,
      //               shadowColor: Colors.greenAccent,
      //               elevation: 3,
      //               shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(10.0)),
      //               minimumSize: Size(175, 40), //////// HERE
      //             ),
      //
      //
      //             onPressed: () {},
      //                child: Text(
      //                  calculator.toString()
      //                ),
      // )
        ]
                            ),
                   SizedBox(
                     height: 20,
                   ),




                   Row(
                     children: [
                       OutlinedButton(onPressed: (){
                         setState(() {
                           a=1;
                           equal='$equal 1';

                         });
                       }, child: Text("1")),
                       OutlinedButton(onPressed: (){
                         setState(() {
                           a=2;
                           equal='$equal 2';
                         });
                       }, child: Text("2")),
                       OutlinedButton(onPressed: (){
                         setState(() {
                           a=3;
                           equal='$equal 3';
                         });
                       }, child: Text("3")),
                     ],
                   ),
                Row(
                  children: [
                    OutlinedButton(onPressed: (){
                      setState(() {
                        a=4;
                        equal='$equal 4';
                      });
                    }, child: Text("4")),
                    OutlinedButton(onPressed: (){
                      setState(() {
                        a=5;
                        equal='$equal 5';
                      });
                    }, child: Text("5")),
                    OutlinedButton(onPressed: (){
                      a=6;
                      equal='$equal 6';
                    }, child: Text("6")),
                  ],
                ),
                Row(
                  children: [
                    OutlinedButton(onPressed: (){
                      setState(() {
                        a=7;
                        equal='$equal 7';
                      });
                    }, child: Text("7")),
                    OutlinedButton(onPressed: (){
                      a=8;
                      equal='$equal 8';
                    }, child: Text("8")),
                    OutlinedButton(onPressed: (){
                      a=9;
                      equal='$equal 9';
                    }, child: Text("9")),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        operation('+');
                      });
                    }, child: Icon(Icons.add)),

                     SizedBox(
                       width: 20,
                     ),

                    Column(
                      children: [
                        FloatingActionButton(onPressed: (){
                          setState(() {
                           cal();
                        });},child: Text('='),)
                        ]
                    )
                  ],
                )





      ])













    )
    );
  }
}
