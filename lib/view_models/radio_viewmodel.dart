import 'package:flutter/material.dart';

import '../utils/radio_options.dart';

class RadioViewModel extends ChangeNotifier {
  RadioOption _selectedOption = RadioOption.option1;

  RadioOption get selectedOption => _selectedOption;

  void selectOption(RadioOption option) {
    _selectedOption = option;
    notifyListeners();
  }
}
