import 'package:flutter/material.dart';

class TargetAmountCurrencyInput extends StatelessWidget {
  const TargetAmountCurrencyInput({super.key});

  final String selectedValue = 'BDT';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Text(
        selectedValue,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    );
  }
}
