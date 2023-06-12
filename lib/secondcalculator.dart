

import 'package:flutter/material.dart';

class Calcu extends StatefulWidget {
  const Calcu({Key? key}) : super(key: key);

  @override
  State<Calcu> createState() => _CalcuState();
}

class _CalcuState extends State<Calcu> {
  int a = 0;
  int b = 0;
  String operator = '';
  int calculator = 0;
  String equal='';
  void operation(String op) {
    setState(() {
      operator = op;
      b = a;
      a = 0;
      equal='$b $operator';

    });
  }

  void calculate() {
    setState(() {
      calculator = a + b;
      // calculator = a-b;
      // calculator = a*b;
      equal='$equal = $calculator';
    });
  }
  void re(){
    setState(() {
      calculator = a -b;
      equal = '$equal=$calculator';
    });
  }
  void sub(){
    setState(() {
      calculator = a*b;
      equal= '$equal= $calculator';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(equal),
                height: 50,
                width: 190,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black)),

              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            a = 1;
                            equal='$equal 1';
                          });
                        },
                        child: Text('1')),
                    height: 30,
                    width: 60,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                  Container(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            a = 2;
                            equal='$equal 2';
                          });
                        },
                        child: Text('2')),
                    height: 30,
                    width: 60,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                  Container(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            a = 3;
                            equal='$equal 3';
                          });
                        },
                        child: Text('3')),
                    height: 30,
                    width: 60,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            a = 4;
                            equal='$equal 4';
                          });
                        },
                        child: Text('4')),
                    height: 30,
                    width: 60,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                  Container(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            a = 5;
                            equal='$equal 5';
                          });
                        },
                        child: Text('5')),
                    height: 30,
                    width: 60,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                  Container(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            a = 6;
                            equal='$equal 6';
                          });
                        },
                        child: Text('6')),
                    height: 30,
                    width: 60,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            a = 7;
                            equal='$equal 7';
                          });
                        },
                        child: Text('7')),
                    height: 30,
                    width: 60,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                  Container(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            a = 8;
                            equal='$equal 8';
                          });
                        },
                        child: Text('8')),
                    height: 30,
                    width: 60,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                  Container(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            a = 9;
                            equal='$equal 9';
                          });
                        },
                        child: Text('9')),
                    height: 30,
                    width: 60,
                    decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      operation('+');
                    },
                    child: Text('+',style: TextStyle(fontSize: 30),),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(onPressed: (){
                    operation('-');
                  },
                    child: Text('-',
                      style: TextStyle(fontSize: 50),),),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(onPressed: (){
                    operation('*');
                  },
                    child: Text('*',
                      style: TextStyle(fontSize: 30),),),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  FloatingActionButton(
                      onPressed: () {
                        calculate();
                      },
                      child: Text(
                        'Add',
                        style: TextStyle(fontSize: 10),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                      onPressed: () {
                        calculate();
                      },
                      child: Text(
                        'Sub',
                        style: TextStyle(fontSize: 10),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                      onPressed: () {
                        calculate();
                      },
                      child: Text(
                        'Mul',
                        style: TextStyle(fontSize: 10),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
