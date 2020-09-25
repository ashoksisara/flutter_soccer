
import 'package:flutter/material.dart';
import 'package:flutter_soccer/api_manager.dart';
import 'package:flutter_soccer/page_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: SoccerApp(),
    );
  }
}

class SoccerApp extends StatefulWidget {
  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0.0,
        title: Text('SOCCERBOARD',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      ///api service
      body: FutureBuilder(
        future: SoccerApi().getAllMatches(), // will call getdata()
        builder: (context, snapshot){
          if(snapshot.hasData){
            return pageBody(snapshot.data);
          }else{
            return Container(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        }, //build app layout
      ),

    );
  }
}
