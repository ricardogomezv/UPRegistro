
import 'package:firstapp/src/new_page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage2 extends StatelessWidget{
  
final user = TextEditingController();
final pass = TextEditingController();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Registro UP"),
       ), 
       body:
       Container(
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget> [
           new Image.asset(
              'assets/user.png',
            width: 150,
            height: 210, 
            ),
              Container(
               width: 300,
               child: Center(
                child: TextField(
                  controller: user,
                
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su username',
                      ),
                      autofocus: false,
                      obscureText: false,
                ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  
                    
                   Container(
                width: 300,
                child: Center(
                child: TextField(
                   controller: pass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su password',
                      ),
                      autofocus: false,
                      obscureText: true,
                    ),
                ),
                  ),

            // ignore: deprecated_member_use
            new RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text(
                "Aceptar",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
               builder: (context) => NewPage3(),
              ));
             // showAlertDialog(context);
            }),
            SizedBox(height: 40,),
             Align(
              alignment: FractionalOffset(0.07, 0.10),
              child: MaterialButton(
                      color: Colors.red,
                  textColor: Colors.white,
                  child: Text(
                    "Regresar",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                onPressed: () {
                  Navigator.of(context).pop();
            })
              ),
         ]
       ),
       ),
       
    );
    
  
  }

}