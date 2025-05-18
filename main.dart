import 'package:currency_converter/currency_convertermatiroal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConvertermatiroalpage());
  }
}
