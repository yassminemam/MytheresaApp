import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier{
  String? currentCategory;

  void setCurrentCategory(String currentCategory) {
    this.currentCategory = currentCategory;
    notifyListeners();
  }
}