import 'package:flutter/material.dart';

class Pro extends StatefulWidget {
  const Pro({Key? key}) : super(key: key);

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro>{

var a='yellow';
var b='green';
var c='brown';
var d='purpleAccent';

void db(){
 setState(() {
   a='green';
   b='yellow';
 });

}
void nb(){
  setState(() {
    a='yellow';
    b='purpleAccent';
  });

}
void kn(){
  setState(() {
    a='purpleAccent';
    b='brown';
  });

}
void fg(){
  setState(() {
    a='brown';
    b='yellow';
  });

}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Container(
                  child: Text(a.toString()),
                  height: 70,
                  width: 70,
                  color: Colors.yellow,
                ),
                Container(
                  child: Text(b.toString()),
                  height: 70,
                  width: 70,
                  color: Colors.green,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Container(
                  child: Text(c.toString()),
                  height: 70,
                  width: 70,
                  color: Colors.brown,
                ),
                Container(
                  child: Text(d.toString()),
                  height: 70,
                  width: 70,
                  color: Colors.purpleAccent,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(onPressed: (){
                                db();
                    },child: Icon(Icons.circle,color:Colors.yellow ),
                    ),

                    FloatingActionButton(onPressed: (){
                             nb();
                    },child: Icon(Icons.circle,color:Colors.green ),
                    ),
                    FloatingActionButton(onPressed: (){
                                kn();
                    },child: Icon(Icons.circle,color:Colors.brown ),
                    ),
                    FloatingActionButton(onPressed: (){
                            fg();
                    },child: Icon(Icons.circle,color:Colors.purpleAccent ),
                    )




                  ],
                    )],
                )


        ),

    );
  }
}
