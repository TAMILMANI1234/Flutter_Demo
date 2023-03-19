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
      body: Center(
        child: ElevatedButton(
          onPressed: ()=>{
            Navigator.pop(context,main)
          },
          child: Text('Back'),
        ),

      ),
    );
  }
}
