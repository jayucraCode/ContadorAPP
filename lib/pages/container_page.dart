import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget{
  @override
  _ContainerPageState createState()=> _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage>{

  Timer _timer;

  int _counter = 10;

  void startDownCounter(){

     _timer = Timer.periodic( Duration(seconds: 1), (timer) {

       setState(() {

          if(_counter<1) {
            timer.cancel();
            _counter = 10;
          }
          else
            _counter = _counter -1;

       });

     });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
       appBar: AppBar(
         title: Text("Layouts Widgets"),
       ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.all(5.0),
             child: Container(
              width: size.width,
              height: size.height*0.25,
              alignment: Alignment.center,
              //margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                //color: Colors.deepOrangeAccent,
                border: Border.all(width: 3, color: Colors.black),
                borderRadius: BorderRadius.circular(20.0),
                gradient: RadialGradient(
                  colors: [Colors.red, Colors.black38, Colors.indigo],
                  stops: [0.5,0.7,0.8],
                )

                /*LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.red, Colors.green, Colors.indigo],
                  stops: [0.35,0.7,0.8],
                ),*/
                /*boxShadow: [
                   BoxShadow(
                       color: Colors.blue,
                       blurRadius:10,
                       offset: Offset(2.0,2.0),
                   ),

                  BoxShadow(
                    color: Colors.red,
                    blurRadius:12,
                    offset: Offset(2.0,2.0),
                  ),
                ],*/
              ),
              child: Text(_counter.toString(),style: TextStyle(fontSize: 85, fontWeight: FontWeight.bold, color: Colors.white),),
             ),
           ),
           //SizedBox(height: 100,),
           RaisedButton.icon(
             icon: Icon(Icons.timer),
             color: Colors.red[500],
             textColor: Colors.white,
             label: Text("Iniciar Contador", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10.0),
               side: BorderSide(color: Colors.black, width: 1)

             ),
             splashColor: Colors.indigo,
             padding: const EdgeInsets.symmetric(horizontal: 20),
             elevation: 8,
             onPressed: (){
              startDownCounter();
             },
           )
         ],
      ),
    );
  }

}