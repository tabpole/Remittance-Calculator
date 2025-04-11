import 'package:flutter/material.dart';

class TargetAmountInput extends StatelessWidget {
  const TargetAmountInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      onChanged: (value) {
        print(value);
      },
      decoration: InputDecoration(
        labelText: "Target",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      ),
    );
  }
}
