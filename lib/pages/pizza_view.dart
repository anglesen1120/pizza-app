import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza.dart';

class PizzaView extends StatelessWidget {
  final Pizza pizza;

  const PizzaView({
    Key key,
    this.pizza,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('${pizza.title}');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Pizza'),
      ),
    );
  }
}
