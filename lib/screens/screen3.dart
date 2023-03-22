import 'package:flutter/material.dart';
class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  TextEditingController name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField AND Form'),
      ),
      body:  Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text('TextFiled'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(1)),
                  hintText: 'Enter name',
                  labelText: 'Name'
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed:(){
                  if(name.text ==''){
                     showDialog(context: context, builder: (BuildContext context){
                        return
                          Center(
                            child: Column(
                              children: [
                                Text("Enter your Name"),
                                ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child:Text('OK'))
                              ],
                            ),
                          );

                     }
                     );
                  }
                  else{
                     print("Saved");
                  }
                } ,
                child: Text('SAVE'))
          ],
        ),
      )

    );
  }
}
