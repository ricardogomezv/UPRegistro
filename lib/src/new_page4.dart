import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewPage4 extends StatefulWidget {

  String nombre;

  NewPage4(this.nombre);

  @override
  NewPage4_user createState() => NewPage4_user();
}

class NewPage4_user extends State<NewPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Usuario-UP"),
       ),
      body: Container(
        color: Color.fromRGBO(249,246,239,1.0),

       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             new Image.asset(
              'assets/user.png',
            width: 365,
            height: 150, 
            ),

             SizedBox(height: 3,),
             Text("USER UPCHIAPAS",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
             
             ),

            SizedBox(height: 5,),
             Text(widget.nombre,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
             
             ),

            
          ],
        ), 
      ),
    );
  }
}