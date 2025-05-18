import 'package:flutter/material.dart';

class CurrencyConvertermatiroalpage extends StatefulWidget {
  const CurrencyConvertermatiroalpage({super.key});

  @override
  State<CurrencyConvertermatiroalpage> createState() =>
      _CurrencyConvertermatiroalpageeState();
}

class _CurrencyConvertermatiroalpageeState
    extends State<CurrencyConvertermatiroalpage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final borderdata = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blueAccent),
      borderRadius: BorderRadius.circular(60),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "CURRENCY CONVERTER",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₹ ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 40,
                color: Color.fromRGBO(231, 102, 3, 1),
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "ENTER THE AMOUNT IN USD",
                  hintStyle: const TextStyle(color: Colors.black),
                  suffixIcon: const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.blue,
                    size: 30,
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(211, 211, 236, 1),
                  focusedBorder: borderdata,
                  enabledBorder: borderdata,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    final input = textEditingController.text;
                    final parsedValue = double.tryParse(input);
                    if (parsedValue != null) {
                      result = parsedValue * 84.94;
                    } else {
                      result = 0;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please enter a valid number')),
                      );
                    }
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 50),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "CONVERT",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
