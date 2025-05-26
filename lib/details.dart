import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({
    Key? key, 
    required this.id, 
    required this.nombre, 
    required this.apellido, 
    required this.email, 
    required this.telefono, 
    required this.direccion, 
    required this.fecha,
    }) : super(key: key);

  String id, nombre, apellido, email, telefono, direccion, fecha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Detalles del cliente",
          ),
          //Pop and navigate to previous screen
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Container(
          padding: const EdgeInsets.all(4.0),
          child: ListView(
            children: [
              //Dynamic Tile
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.bookmark_added_rounded,
                      color: Color.fromARGB(255, 240, 133, 204)),
                  onPressed: () {},
                ),
                title: Text(
                  "Id del cliente",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(id),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                  
                ),
                
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.bookmark_added_rounded,
                      color: Color.fromARGB(255, 240, 133, 204)),
                  onPressed: () {},
                ),
                title: Text(
                  "Nombre del cliente",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(nombre),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                  
                ),
                
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.bookmark_added_rounded,
                      color: Color.fromARGB(255, 240, 133, 204)),
                  onPressed: () {},
                ),
                title: Text(
                  "Apellido del cliente",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(apellido),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                  
                ),
                
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.bookmark_added_rounded,
                      color: Color.fromARGB(255, 240, 133, 204)),
                  onPressed: () {},
                ),
                title: Text(
                  "Correo del cliente",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(email),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                  
                ),
                
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.bookmark_added_rounded,
                      color: Color.fromARGB(255, 240, 133, 204)),
                  onPressed: () {},
                ),
                title: Text(
                  "Telefono del cliente",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(telefono),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                  
                ),
                
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.bookmark_added_rounded,
                      color: Color.fromARGB(255, 240, 133, 204)),
                  onPressed: () {},
                ),
                title: Text(
                  "Direccion del cliente",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(direccion),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                  
                ),
                
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
                leading: IconButton(
                  icon: const Icon(Icons.bookmark_added_rounded,
                      color: Color.fromARGB(255, 240, 133, 204)),
                  onPressed: () {},
                ),
                title: Text(
                  "Fecha de registro del cliente",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                subtitle: Text(fecha),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                  
                ),
                
              ),

              //Static Tiles for design
         
            ],
          ),
        ));
  }
}
