import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../utils/radio_options.dart';
import '../view_models/radio_viewmodel.dart';

class RadioScreen extends StatelessWidget {
  var radioOption;
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => getIt<RadioViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Radio Button with MVVM and DI'),
        ),
        body: Consumer<RadioViewModel>(
          builder: (context, viewModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text("Option 1"),
                  leading: Radio<RadioOption>(
                    value: RadioOption.option1,
                    groupValue: viewModel.selectedOption,
                    onChanged: (RadioOption? value) {
                      if (value != null)
                        viewModel.selectOption(value);
                      print(value);
                    },
                  ),
                ),
                ListTile(
                  title: Text("Option 2"),
                  leading: Radio<RadioOption>(
                    value: RadioOption.option2,
                    groupValue: viewModel.selectedOption,
                    onChanged: (RadioOption? value) {
                      if (value != null) viewModel.selectOption(value);
                      print(value);
                    },
                  ),
                ),
                ListTile(
                  title: Text("Option 3"),
                  leading: Radio<RadioOption>(
                    value: RadioOption.option3,
                    groupValue: viewModel.selectedOption,
                    onChanged: (RadioOption? value) {
                      if (value != null) viewModel.selectOption(value);
                      print(value);
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
