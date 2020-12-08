import 'package:flutter/material.dart';

import 'package:estados/models/usuario.dart';

class UsuarioService with ChangeNotifier {
  Usuario _usuario;

  /* ========================= */
  /* Getter usuario */
  /* ========================= */
  Usuario get usuario => this._usuario;
  /* ====================== */

  /* ========================== */
  /* Getter para existe usuario */
  /* ======================== */
  bool get existeUsuario => (this._usuario != null) ? true : false;
  /* ====================== */

  /* ====================== */
  /* Setter para usuario*/
  /* ====================== */
  set usuario(Usuario user) {
    this._usuario = user;
    notifyListeners();
  }
  /* ====================== */

  /* ========================== */
  /* propiedad para cambiar edad*/
  /* ========================== */
  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    notifyListeners();
  }
  /* ========================== */

  void removerUsuario() {
    this.usuario = null;
    notifyListeners();
  }
}
