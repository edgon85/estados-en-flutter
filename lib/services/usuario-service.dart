import 'package:flutter/material.dart';

import 'package:estados/models/usuario.dart';

class UsuarioService with ChangeNotifier {
  Usuario _usuario;

  Usuario get usuario => this._usuario;

  bool get existeUsuario => (this._usuario != null) ? true : false;

  /* ====================== */
}
