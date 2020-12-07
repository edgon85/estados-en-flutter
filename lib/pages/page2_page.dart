import 'package:estados/models/usuario.dart';
import 'package:estados/serivices/usuario_services.dart';
import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<Usuario>(
            stream: usuarioService.usuarioStream,
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? Text(snapshot.data.nombre)
                  : Text('Pagina 2');
            }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text(
                  'Establecer usuario',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  final nuevoUsaurio = new Usuario(nombre: 'Edwin', edad: 35);
                  usuarioService.cargarUsuario(nuevoUsaurio);
                }),
            /* ============================================ */
            MaterialButton(
                child: Text(
                  'Cambiar edad',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  usuarioService.cambiarEdad(24);
                }),
            /* ============================================ */
            MaterialButton(
                child: Text(
                  'Añadir profesion',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
