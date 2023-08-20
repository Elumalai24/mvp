import '../model/counter_model.dart';
import '../view/counter_view.dart';

class CounterPresenter {
  final CounterModel model;
  late CounterView view;

  CounterPresenter(this.model);

  void attachView(CounterView view) {
    this.view = view;
    updateView();
  }

  void incrementCounter() {
    model.incrementCounter();
    updateView();
  }

  void updateView() {
    view.counter = model.counter;
  }
}
