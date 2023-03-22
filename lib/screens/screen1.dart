import 'package:flutter/material.dart';
import 'package:flutter_demo/main.dart';
class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
     /* body: Center(
        child: Container(
          child: Text('Hello World',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20.0)
          ),
        ),
      )*/
     /* body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text('Hello World',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0)
            ),
          ),

          Container(
            child: Text('Hello World',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0)
            ),
          ),

          Container(
            child: Text('Hello World',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0)
            ),
          ),
        ],

      ),*/

    /*
     ------------>Main
     1 2 3 |
           |cross
     */
     body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text('Hello World',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0)
            ),
          ),
          Container(
            child: Text('Hello World',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),

            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0)
            ),
          ),  Container(
            child: Text('Hello World',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0)
            ),
          ),


        ],
      ),
      /*body: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 30, 60),
            child: Container(
              child: Text('Hello World'),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
          Container(

            child: Text('Second'),
          )

        ],
      )*/
    );
  }
}
