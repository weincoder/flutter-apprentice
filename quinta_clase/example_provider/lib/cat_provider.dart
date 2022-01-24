import 'package:flutter/material.dart';

class CatProvider extends ChangeNotifier {
  String _name = 'michi no definido 😼';

  String get name => _name;

  set name (String newName) {
    _name = newName;
    notifyListeners();
  }

}
