import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario-service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
            ? Text('Nombre: ${usuarioService.usuario.nombre}')
            : Text('Pagina 2'),
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
                  final newUser = new Usuario(nombre: 'Edwin', edad: 35);
                  usuarioService.usuario = newUser;
                }),
            /* ============================================ */
            MaterialButton(
              child: Text(
                'Cambiar edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () => usuarioService.cambiarEdad(25),
            ),
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
