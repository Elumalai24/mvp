import 'package:flutter/material.dart';
class CounterView extends StatefulWidget {
  int? counter;
  final VoidCallback onPressed;

  CounterView({required this.counter, required this.onPressed});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App (MVP)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '${widget.counter}',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          widget.onPressed();
          setState(() {

          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
