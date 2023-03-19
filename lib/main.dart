import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/screen1.dart';
import 'package:flutter_demo/screens/screen2.dart';
import 'package:flutter_demo/screens/screen3.dart';
import 'package:flutter_demo/screens/screen4.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Flutter'),
          centerTitle: true,
          elevation: 100,
          toolbarHeight: 100,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.red,
          titleSpacing: 100,
          actions: [
            IconButton(onPressed:(){
              print("setting is clicked");
               },
              icon: Icon(Icons.settings),tooltip: 'setting',),
            IconButton(onPressed:(){}, icon: Icon(Icons.account_circle),tooltip: 'account',),

          ],
        ),
        body: Center(
        child: Text('Hello World'),
      ),
        drawer: Drawer(
         child: ListView(
          children: [
            DrawerHeader(
                child: Text(
                  'Hello Drawer',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 0.50,

                  ),),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,

                ),
            ),
            ListTile(
              leading:Icon(Icons.search) ,
              title: Text('Search'),
              onTap: ()=>{
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>screen1()))
              },
            ),
            ListTile(
              leading:Icon(Icons.account_circle) ,
              title: Text('Account'),
              onTap: ()=>{
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>screen2()))
              },
            ),
            ListTile(
              leading:Icon(Icons.add) ,
              title: Text('Add'),
              onTap: ()=>{
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>screen3()))
              },
            ),
            ListTile(
              leading:Icon(Icons.safety_check) ,
              title: Text('Safety'),
              onTap: ()=>{
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>screen4()))
              },
            )
          ],

        ),
      ),

    );

  }
}
