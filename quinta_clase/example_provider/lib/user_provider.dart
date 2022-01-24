

import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
  String _name = 'usuario no ha sido registrado';

  String get name => _name;
  set name ( String newName){
    _name = newName;
    notifyListeners();
  }

}