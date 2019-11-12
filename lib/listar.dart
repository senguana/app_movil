import 'dart:math';

import 'package:flutter/material.dart';

class Listar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: _navegator(context),
        body: Stack(
          children: <Widget>[
            _fondoApp(),
             SingleChildScrollView(
               child: Column(

                 children: <Widget>[
                   _texto()
                 ],
               ),
             )
          ],
        ),
      ),
    );
  }

  Widget _fondoApp(){
    final gradiente = Container(

      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.1), end: FractionalOffset(0.0, 1.5),
            colors: [
              Colors.red,
              Colors.white



            ]
        )
      ),
    );
    final caja = Transform.rotate(
        angle: -pi /7.0,
      child: Container(
        width: 360.10,
        height: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(89.9),
          color: Colors.white
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -120.0,
            left: -50.0,
            child: caja
        )
      ],
    );
  }

  Widget _texto(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Text("APP MOVIL",
              style: TextStyle(fontSize: 50.0,
              fontWeight: FontWeight.bold,
              color: Colors.red),
            ),
            Text("TELÉFONO",
            style: TextStyle(
              fontSize: 50.0,
                fontWeight: FontWeight.bold,
              color: Colors.red
            ),)
          ],
        ),
      ),
    );
  }

}

Widget _navegator(BuildContext context){
  return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.deepOrange,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(
            color: Colors.black
          )
        )
      ),

      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.child_friendly),
            title: Text("Ventas")),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind),
            title: Text("Contactos")),

      ]),

  );
}