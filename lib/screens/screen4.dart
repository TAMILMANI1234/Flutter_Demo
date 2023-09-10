import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  double slide_value=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slide_value=0;
  }
  void showToast(){
    Fluttertoast.showToast(
        msg: "Message from Toast ",
        backgroundColor: Colors.grey,
        fontSize: 20.0,
        textColor: Colors.white ,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb:1
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen"),
        backgroundColor: Colors.red,
      ),
     /* body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Myslide(),
          rotate()
        ],
      ),*/
     /* body:  Center(
        child:Container(
          width: 200,
          height: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            color: Colors.red,
            elevation: 50,
            shadowColor: Colors.black,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text("This is card Widgets"),
                ),
                ElevatedButton(onPressed: (){Navigator.pop(context);}, child:Text("ok"))
              ],
            ),
          )
        ),
      )*/
     /* body: Padding(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          shrinkWrap: true,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Text("Grid"),
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              child: Text("Grid"),
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              child: Text("Grid"),
              color: Colors.green,
            ),

          ],

        ),
      )*/
      body: Center(
        child: ElevatedButton(
          onPressed:(){
            Fluttertoast.showToast(
                msg: "Message from Toast ",
                backgroundColor: Colors.grey,
                fontSize: 20.0,
                textColor: Colors.white ,
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,

            );
          },
          child: Text("Click"),
        ),
      ),
    );
  }


  Slider Myslide(){
    return Slider(
        value: slide_value,
        min: 0,
        max: 100,
        onChanged: (val){
           setState(() {
             slide_value=val;
           });
        }
    );
  }

  Container rotate(){
    return Container(
       child:Transform.rotate(
         angle:slide_value,
         child: Container(
           height: 100.0,
           width: 100.0,
           decoration: BoxDecoration(
             color: Colors.green,
             border: Border.all(color: Colors.red)
           ),
         ),
       )

    );
  }

  Container blur(){
    return Container(
      child: const Text("Blur")

    );
  }

}
