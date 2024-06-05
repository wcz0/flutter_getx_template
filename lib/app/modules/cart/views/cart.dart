

import 'package:flutter/material.dart';

class CartRoute extends StatefulWidget {
  @override
  _CartRouteState createState() => _CartRouteState();
}

class _CartRouteState extends State<CartRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('购物车'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '购物车',
            ),
          ],
        ),
      ),
    );
  }
}