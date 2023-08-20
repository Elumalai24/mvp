import 'package:flutter/material.dart';
import 'package:mvp/presenter/counter_presenter.dart';
import 'package:mvp/view/counter_view.dart';

import 'model/counter_model.dart';

void main() {
  final model = CounterModel();
  final presenter = CounterPresenter(model);
  final view = CounterView(
    counter: model.counter,
    onPressed: presenter.incrementCounter,
  );
  presenter.attachView(view);

  runApp(MyApp(view));
}

class MyApp extends StatelessWidget {
  final CounterView view;

  MyApp(this.view);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App (MVP)',
      home: view,
    );
  }
}
