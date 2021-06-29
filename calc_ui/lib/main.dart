import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget calcbutton(String btntxt, Color btnclr, Color txtcolor) {
    return Container(
      child: RaisedButton(
        onPressed: (){},
        child: Text(btntxt,
        style: TextStyle(
            fontSize: 35,
          color: txtcolor
        ),
      ),
      shape: CircleBorder(),
      color: btnclr,
      padding: EdgeInsets.all(18)
      ),
    );
  }
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(padding: EdgeInsets.all(10.0),
                    child: Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white,
                    fontSize: 100
                    ),
                     ),
                    ),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('AC', Colors.grey, Colors.black),
                  calcbutton('+/_', Colors.grey, Colors.black),
                  calcbutton('%', Colors.grey, Colors.black),
                  calcbutton('÷', Colors.amber, Colors.white),


                ],

              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('7', Colors.grey.shade900, Colors.white),
                  calcbutton('8', Colors.grey.shade900, Colors.white),
                  calcbutton('9', Colors.grey.shade900, Colors.white),
                  calcbutton('x', Colors.amber, Colors.white),
                ],

              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('4', Colors.grey.shade900, Colors.white),
                  calcbutton('5', Colors.grey.shade900, Colors.white),
                  calcbutton('6', Colors.grey.shade900, Colors.white),
                  calcbutton('-', Colors.amber, Colors.white),
                ],

              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton('1', Colors.grey.shade900, Colors.white),
                  calcbutton('2', Colors.grey.shade900, Colors.white),
                  calcbutton('3', Colors.grey.shade900, Colors.white),
                  calcbutton('+', Colors.amber, Colors.white),
                ],

              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                      onPressed: (){},
                      child: Text('0',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white
                        ),
                      ),
                      shape: StadiumBorder(),
                      color: Colors.grey.shade900,
                  ),
                  calcbutton('.', Colors.grey.shade900, Colors.white),
                  calcbutton('=', Colors.amber, Colors.white),

                ],

              ),
              SizedBox(height: 10,)
            ],
          ),
        )
      ),
    );
  }
}