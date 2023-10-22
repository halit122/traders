import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traders/core/constant/routes_const.dart';
import 'package:traders/core/services/services.dart';

import '../../data/datasource/static/static.dart';

class ControllerProvider extends ChangeNotifier {
  int _counter = 0;
  final PageController _pageController = PageController();

  int get index => _counter;
  PageController get pageController => _pageController;

  set setCunter(int index) => _counter = index;

  MyServices services = Get.find();

  next(BuildContext context) {
    if (_counter > onbaordingModle.length - 2) {
     services.preferences.setString("onbaording", "1");
      Navigator.of(context).pushReplacementNamed(RoutesConst.login);
  
    } else {
      _counter++;
      _pageController.animateToPage(_counter,
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate);
    }

    notifyListeners();
  }

  pagechnag(int i) {
    _counter = i;
    notifyListeners();
  }
}
