import 'package:flutter/material.dart';
import 'details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _idController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apellidossController = TextEditingController();
  final _emailController = TextEditingController();
  final _telController = TextEditingController();
  final _direccController = TextEditingController();
  final _fechaController = TextEditingController();


  @override
  void dispose() {
    _idController.dispose();
    _nombreController.dispose();
    _apellidossController.dispose();
    _emailController.dispose();
    _telController.dispose();
    _direccController.dispose();
    _fechaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 138, 171, 209),
            title: Text(
          'Clientes •⩊•',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
            centerTitle: true),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              MyTextField(
                  myController: _idController,
                  fieldName: "Id del cliente",
                  myIcon: Icons.assignment_ind_sharp,
                  prefixIconColor: const Color.fromARGB(255, 252, 63, 158)),
              const SizedBox(height: 10.0),
              //Use to add space between Textfields
              MyTextField(
                  myController: _nombreController,
                  fieldName: "Nombre del cliente",
                  myIcon: Icons.accessibility_new_rounded,
                  prefixIconColor: const Color.fromARGB(255, 252, 63, 158)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _apellidossController,
                  fieldName: "Apellidos del cliente",
                  myIcon: Icons.accessibility_new_rounded,
                  prefixIconColor: const Color.fromARGB(255, 252, 63, 158)),
              const SizedBox(height: 10.0),
                MyTextField(
                  myController: _emailController,
                  fieldName: "Correo del cliente",
                  myIcon: Icons.email,
                  prefixIconColor: const Color.fromARGB(255, 252, 63, 158)),
              const SizedBox(height: 10.0),
                MyTextField(
                  myController: _telController,
                  fieldName: "Telefono del cliente",
                  myIcon: Icons.phone_enabled,
                  prefixIconColor: const Color.fromARGB(255, 252, 63, 158)),
              const SizedBox(height: 10.0),
                MyTextField(
                  myController: _direccController,
                  fieldName: "Dieccion del cliente",
                  myIcon: Icons.home_rounded,
                  prefixIconColor: const Color.fromARGB(255, 252, 63, 158)),
              const SizedBox(height: 10.0),
                MyTextField(
                  myController: _fechaController,
                  fieldName: "Fecha de registro del cliente",
                  myIcon: Icons.date_range,
                  prefixIconColor: const Color.fromARGB(255, 252, 63, 158)),
              const SizedBox(height: 20.0),
              myBtn(context),
            ],
          ),
        ));
  }

  //Function that returns OutlinedButton Widget also it pass data to Details Screen
  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              id: _idController.text,
              nombre: _nombreController.text,
              apellido: _apellidossController.text,
              email: _emailController.text,
              telefono: _telController.text,
              direccion: _direccController.text,
              fecha: _fechaController.text,

              
            );
          }),
        );
      },
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
    );
  }
}

//Custom STateless WIdget Class that helps re-usability
// You can learn it in Tutorial (2.13) Custom Widget in Flutter
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  String fieldName;
  final IconData myIcon;
  Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple.shade300),
          ),
          labelStyle: const TextStyle(color: Colors.deepPurple)),
    );
  }
}
