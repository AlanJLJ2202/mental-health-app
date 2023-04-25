import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final TextEditingController txtUser = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            backgroundColor: Colors.grey[400],
            appBar: AppBar(
              title: const Text('Mental health app'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                )
              ],
            ),
            body: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 15, bottom: 30),
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  height: 50,
                  child: Center(child: Text('¡Bienvenido, usuario!')),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        child: Boton(() {
                          //Navigator.pushNamed(context, '/home');
                        }, Colors.green, 'Mi Expediente', 100),
                      ),
                      Container(
                        height: 50,
                        child: Boton(() {
                          //Navigator.pushNamed(context, '/home');
                        }, Colors.blue, 'Información', 200),
                      ),
                    ],
                  ),
                ),


              ],
            )
        )
    );
  }


  Widget InputField(TextEditingController controller, String label,
      bool isPass) {
    return Container(
      height: 55,
      margin: const EdgeInsets.only(left: 30, right: 30, top: 40),
      child: TextField(
        textAlign: TextAlign.center,
        obscureText: isPass,
        controller: controller,
        style: const TextStyle(
            color: Colors.white
        ),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(25.0),
            ),
            labelText: label,
            labelStyle: const TextStyle(
                color: Colors.white
            )
        ),
      ),
    );
  }


  Widget Boton(Function() funcion, Color color, String texto, double alto) {
    return Container(
      child: ElevatedButton(
        onPressed: funcion,
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(15),
          backgroundColor: MaterialStatePropertyAll(color),
          overlayColor: const MaterialStatePropertyAll(Colors.grey),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              )
          ),
        ),
        child: Text(texto,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

}