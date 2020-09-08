import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{

  int _count = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Mi Primera Aplicación"),
       //centerTitle: true,
       backgroundColor: Color(0xff1234bd),
       elevation: 15,
       actions: [
         IconButton(
           icon: Icon(Icons.camera_alt),
           onPressed: (){
             print("Hice click en camara");
           },
         )
       ],
     ),
     body : Center(
       child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
         children: [
            Text("JOSE ALFREDO YUCRA COFRE", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue ),),
            Text("Has realizdo $_count clicks",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
         ],
       ),
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),
       onPressed: (){

         setState(() {
           _count = _count+1;
         });

        // print(_count);
       },
     ),
   );
  }

}