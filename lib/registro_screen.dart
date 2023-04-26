import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {

  final TextEditingController txtUser = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            backgroundColor: Colors.deepPurple,
            body: ListView(
              padding: const EdgeInsets.only(top: 80, bottom: 30),
              children: [
                Container(
                  height: 100,
                  margin: const EdgeInsets.only(left: 50, right: 50),
                  child: const Center(
                      child: Text('Mental health app', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: 35),)
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text('Registro',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),
                  ),
                ),
                /*const Image(
                    width: 200,
                    height: 100,
                    image: AssetImage('assets/images/mh.png')
                ),*/
                InputField(txtUser, 'Nombre completo', false),
                InputField(txtUser, 'Teléfono', false),
                InputField(txtUser, 'Fecha de nacimiento', false),
                InputField(txtUser, 'Usuario', false),
                InputField(txtPassword, 'Contraseña', true),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text('Ya tengo una cuenta',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 110, right: 110, top: 50, bottom: 50),
                  height: 50,
                  child: Boton(() {
                    //Navigator.pushNamed(context, '/home');
                  }),
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


  Widget Boton(Function() funcion) {
    return ElevatedButton(
      onPressed: funcion,
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(15),
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
        overlayColor: const MaterialStatePropertyAll(Colors.grey),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )
        ),
      ),
      child: const Text('REGISTRARSE',
        style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }

}
