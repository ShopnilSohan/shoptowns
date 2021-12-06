import 'package:flutter/material.dart';
import 'package:shoptowns/log.dart';

void main() {
  runApp(shopTown());
}

class shopTown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
