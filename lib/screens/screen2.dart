import 'package:flutter/material.dart';
class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Elevated Button
            Center(
              child: ElevatedButton(
                child: Text('Elevated Button'),
                style: ElevatedButton.styleFrom(
                  primary:Colors.red,
                ),
                onPressed: (){
                  showAlertBox(context,'Elevated Button is clicked');
                },
              ),
            ),
            Center(
              child: OutlinedButton(
                child: Text('Outline Button'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: (){
                  showAlertBox(context,'Outline  Button is clicked');
                },

              )
            ),
            Center(
              child: TextButton(
                child: Text('Text Button'),
                style:TextButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: (){
                  showAlertBox(context,'Text Button is clicked');
                },
              ),
            ),
            Center(
              child: IconButton(
                icon:Icon(Icons.subtitles),
                iconSize: 40,
                color: Colors.red,
                onPressed: (){
                  showAlertBox(context,'Icon Button is clicked');
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey ,
        child: Icon(Icons.add),
        onPressed: (){
          showAlertBox(context,'Floating action Button is clicked');
        },
      ),
    );
  }
}

showAlertBox(BuildContext context, String S){
  AlertDialog alertDialog=AlertDialog(
    title: Text('Alert Box'),
    content: Text(S),
    actions: [
      ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Ok'))
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;
      });
}