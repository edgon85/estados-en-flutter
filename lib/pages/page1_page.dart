import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario-service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () => usuarioService.removerUsuario())
        ],
      ),
      body: usuarioService.existeUsuario
          ? InformacionUsuario(
              usuario: usuarioService.usuario,
            )
          : Center(
              child: Text('No hay usuario seleccionado'),
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

/* ============================================ */
/* Body */
/* ============================================ */
class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  InformacionUsuario({@required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          /* ============================================ */
          Divider(),
          /* ============================================ */
          ListTile(
            title: Text('Nombre: ${usuario.nombre}'),
          ),
          /* ============================================ */
          ListTile(
            title: Text('Edad: ${usuario.edad}'),
          ),
          /* ============================================ */
          Text(
            'Profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          /* ============================================ */
          Divider(),
          /* ============================================ */
          ListTile(
            title: Text('Profesion 1:'),
          ),
          /* ============================================ */
          ListTile(
            title: Text('Profesion 2:'),
          ),
          /* ============================================ */
          ListTile(
            title: Text('Profesion 3:'),
          ),
        ],
      ),
    );
  }
}
/* ============================================ */
