import 'dart:async';

import 'package:estados/models/usuario.dart';

class _UsuarioService {
  Usuario _usuario;

  StreamController<Usuario> _usuarioStreamController =
      new StreamController<Usuario>();

  Usuario get usuario => this._usuario;

  bool get existeUsuario => (this._usuario != null) ? true : false;

  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  /* ============================================ */
  /* crea o carga un usuario */
  /* ============================================ */
  void cargarUsuario(Usuario user) {
    this._usuario = user;
    this._usuarioStreamController.add(user);
  }
  /* ============================================ */

  /* ============================================ */
  /* crea o cambia edad */
  /* ============================================ */
  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    this._usuarioStreamController.add(this._usuario);
  }
  /* ============================================ */

}

final usuarioService = new _UsuarioService();
