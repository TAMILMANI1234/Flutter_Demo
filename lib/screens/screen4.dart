import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:table_calendar/table_calendar.dart';

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
        fontSize: 20.0,
        textColor: Colors.white ,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb:1
    );
  }


  //////////////////////calender///////////////////
  DateTime today= DateTime.now();

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

      /////////////////////grid////////////////////////////////////
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
    /*  body: Center(
        child: ElevatedButton(
          onPressed:showToast ,
          child: Text("Click"),
        ),
      ),*/


      /////////////// Calender //////////////////////////////////////
      /*body: Column(
        children: [
          Text("123"),
          Container(
            child: TableCalendar(
              focusedDay:today,
              firstDay: DateTime.utc(2010,10,16),
              lastDay: DateTime.utc(2040,3,13),
            ),
          )
        ],
      ),*/
      
      
     /* body: Center(
        child: Column(
          children: [
            DataTable(
                columns:[
                  DataColumn(label: Text("S.no",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                  ),)),
                  DataColumn(label: Text("Name",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                  ))),
                  DataColumn(label: Text("Age",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                  ))),
                  DataColumn(label: Text("Mobile No",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                  ))),

                ],
                rows:[
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("Harris")),
                    DataCell(Text("25")),
                    DataCell(Text("7010416422")),

                  ]),

                  DataRow(cells: [
                    DataCell(Text("2")),
                    DataCell(Text("Harris")),
                    DataCell(Text("25")),
                    DataCell(Text("7010416422")),

                  ]),

                  DataRow(cells: [
                    DataCell(Text("3")),
                    DataCell(Text("Harris")),
                    DataCell(Text("25")),
                    DataCell(Text("7010416422")),


                  ]),

                  DataRow(cells: [
                    DataCell(Text("4")),
                    DataCell(Text("Harris")),
                    DataCell(Text("25")),
                    DataCell(Text("7010416422")),

                  ]),
                ]
            )
          ],
        ),
      )*/
      /*body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.blue,
              valueColor: AlwaysStoppedAnimation(Colors.green),
              strokeWidth: 5,
            ),
            SizedBox(
              height: 15,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.blue,
              valueColor: AlwaysStoppedAnimation(Colors.green),
              minHeight: 10,
            )
          ],
        ),
      ),*/
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            final snackBar = SnackBar(
              content: const Text('This is SnackBar!'),
              backgroundColor: (Colors.black12),
              action: SnackBarAction(
                label: 'dismiss',
                onPressed: () {
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text("Click to display Snackbar"),
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

}
