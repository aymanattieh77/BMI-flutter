import 'package:flutter/material.dart';

class BMIprovider extends ChangeNotifier {
  bool _isMale = true;
  double _height = 180;
  double _weight = 60;
  double _age = 20;

  bool get isMale => _isMale;
  double get height => _height;
  double get weight => _weight;
  double get age => _age;

  changeGender(bool val) {
    _isMale = val;
    notifyListeners();
  }

  changeHeight(double newHeight) {
    _height = newHeight;
    notifyListeners();
  }

  incrementAge() {
    _age++;
    notifyListeners();
  }

  incrementWeight() {
    _weight++;
    notifyListeners();
  }

  decrementAge() {
    _age != 0 ? _age-- : _age = 0;
    notifyListeners();
  }

  decrementWeight() {
    _weight != 0 ? _weight-- : _weight = 0;
    notifyListeners();
  }
}
