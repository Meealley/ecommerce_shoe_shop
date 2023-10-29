import 'package:flutter/material.dart';

class ProductNotifier extends ChangeNotifier {
  int _activePage = 0;
  List<dynamic> _shoeSizes = [];

  int get activePage => _activePage;

  set activePage(int newIndex) {
    _activePage = newIndex;
    notifyListeners();
  }

  List<dynamic> get shoeSizes => _shoeSizes;
  set shoesSizes(List<dynamic> newSizes) {
    _shoeSizes = newSizes;
    notifyListeners();
  }

//fot toggling the selection of the item
  void toggleCheck(int index) {
    for (int i = 0; i < _shoeSizes.length; i++) {
      if (i == index) {
        _shoeSizes[index]['isSelected'] = !_shoeSizes[index]['isSelected'];
      }
    }
  }
}
